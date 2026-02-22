import 'dart:typed_data';

import 'package:flutter/material.dart';

class LoadingIndicator extends StatefulWidget {
  final Uint8List imageBytes;

  const LoadingIndicator({super.key, required this.imageBytes});

  @override
  State<LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  int _dotCount = 0;

  static const _messages = [
    'Analizando tu planta',
    'Identificando especie',
    'Consultando cuidados',
  ];
  int _messageIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _dotCount = (_dotCount + 1) % 4;
            if (_dotCount == 0) {
              _messageIndex = (_messageIndex + 1) % _messages.length;
            }
          });
          _controller.forward(from: 0);
        }
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        // Plant image with overlay
        Expanded(
          flex: 3,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(24),
                ),
                child: Image.memory(
                  widget.imageBytes,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(24),
                  ),
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ],
          ),
        ),
        // Loading text
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(color: colorScheme.primary),
              const SizedBox(height: 24),
              Text(
                '${_messages[_messageIndex]}${'.' * _dotCount}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: colorScheme.onSurface,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
