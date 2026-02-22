"""
CORS proxy + static file server for PlantID development.
"""
import http.server
import json
import mimetypes
import ssl
import traceback
import urllib.request
import urllib.error
from pathlib import Path

# Load API key from .env
env_path = Path(__file__).parent / ".env"
API_KEY = ""
with open(env_path) as f:
    for line in f:
        if line.startswith("ANTHROPIC_API_KEY="):
            API_KEY = line.strip().split("=", 1)[1]

ANTHROPIC_API_URL = "https://api.anthropic.com/v1/messages"
WEB_DIR = Path(__file__).parent / "build" / "web"
PORT = 8081

ssl_ctx = ssl.create_default_context()
ssl_ctx.check_hostname = False
ssl_ctx.verify_mode = ssl.CERT_NONE


class Handler(http.server.BaseHTTPRequestHandler):

    def _cors_headers(self):
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
        self.send_header("Access-Control-Allow-Headers", "*")

    def do_OPTIONS(self):
        self.send_response(200)
        self._cors_headers()
        self.end_headers()

    def do_POST(self):
        print(f"\n=== POST {self.path} ===")

        if self.path == "/api/messages":
            try:
                content_length = int(self.headers.get("Content-Length", 0))
                post_data = self.rfile.read(content_length)
                print(f">>> Body size: {content_length} bytes")
                print(f">>> API Key: {API_KEY[:25]}...")

                req = urllib.request.Request(
                    ANTHROPIC_API_URL,
                    data=post_data,
                    headers={
                        "Content-Type": "application/json",
                        "x-api-key": API_KEY,
                        "anthropic-version": "2023-06-01",
                    },
                    method="POST",
                )

                with urllib.request.urlopen(req, timeout=120, context=ssl_ctx) as resp:
                    data = resp.read()
                    print(f"<<< Anthropic: {resp.status} ({len(data)} bytes)")
                    self.send_response(200)
                    self.send_header("Content-Type", "application/json")
                    self._cors_headers()
                    self.end_headers()
                    self.wfile.write(data)

            except urllib.error.HTTPError as e:
                body = e.read()
                print(f"<<< Anthropic HTTP Error: {e.code}")
                print(f"<<< {body[:500].decode(errors='replace')}")
                self.send_response(e.code)
                self.send_header("Content-Type", "application/json")
                self._cors_headers()
                self.end_headers()
                self.wfile.write(body)

            except Exception as e:
                print(f"<<< PROXY ERROR: {type(e).__name__}: {e}")
                traceback.print_exc()
                self.send_response(502)
                self.send_header("Content-Type", "application/json")
                self._cors_headers()
                self.end_headers()
                self.wfile.write(json.dumps({"error": str(e)}).encode())
        else:
            self.send_response(404)
            self.end_headers()

    def do_GET(self):
        # Serve static files from build/web
        path = self.path.split("?")[0]  # strip query params
        if path == "/":
            path = "/index.html"

        file_path = WEB_DIR / path.lstrip("/")

        if file_path.is_file():
            content_type, _ = mimetypes.guess_type(str(file_path))
            content = file_path.read_bytes()
            self.send_response(200)
            self.send_header("Content-Type", content_type or "application/octet-stream")
            self.send_header("Content-Length", str(len(content)))
            self._cors_headers()
            self.end_headers()
            self.wfile.write(content)
        else:
            # For SPA routing, serve index.html for non-file paths
            index = WEB_DIR / "index.html"
            if index.is_file() and "." not in path.split("/")[-1]:
                content = index.read_bytes()
                self.send_response(200)
                self.send_header("Content-Type", "text/html")
                self.send_header("Content-Length", str(len(content)))
                self._cors_headers()
                self.end_headers()
                self.wfile.write(content)
            else:
                self.send_response(404)
                self.end_headers()

    def log_message(self, format, *args):
        # Quieter logs - only show non-200 or POST requests
        status = args[1] if len(args) > 1 else ""
        if "POST" in str(args[0]) or str(status) != "200":
            super().log_message(format, *args)


if __name__ == "__main__":
    print(f"API Key loaded: {bool(API_KEY)} (starts with: {API_KEY[:25]}...)")
    print(f"Web dir: {WEB_DIR} (exists: {WEB_DIR.exists()})")
    print(f"Server: http://localhost:{PORT}")
    print(f"  POST /api/messages -> {ANTHROPIC_API_URL}")
    print(f"  GET /* -> {WEB_DIR}/")
    print()
    server = http.server.HTTPServer(("", PORT), Handler)
    server.serve_forever()
