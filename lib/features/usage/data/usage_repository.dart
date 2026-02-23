import 'package:shared_preferences/shared_preferences.dart';

class UsageRepository {
  static const int _dailyLimit = 3;

  String _keyForToday() {
    final now = DateTime.now();
    return 'usage_${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
  }

  Future<int> getUsagesToday() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keyForToday()) ?? 0;
  }

  Future<void> incrementUsage() async {
    final prefs = await SharedPreferences.getInstance();
    final key = _keyForToday();
    final current = prefs.getInt(key) ?? 0;
    await prefs.setInt(key, current + 1);
  }

  Future<bool> canIdentify() async {
    final usage = await getUsagesToday();
    return usage < _dailyLimit;
  }

  Future<int> remainingToday() async {
    final usage = await getUsagesToday();
    return (_dailyLimit - usage).clamp(0, _dailyLimit);
  }

  DateTime nextResetTime() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day + 1); // medianoche
  }

  int get dailyLimit => _dailyLimit;
}
