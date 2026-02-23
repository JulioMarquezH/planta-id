import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/usage_repository.dart';

part 'usage_provider.g.dart';

@riverpod
class UsageNotifier extends _$UsageNotifier {
  final _repository = UsageRepository();

  @override
  Future<int> build() => _repository.remainingToday();

  Future<bool> canIdentify() => _repository.canIdentify();

  Future<void> consume() async {
    await _repository.incrementUsage();
    ref.invalidateSelf();
  }

  int get dailyLimit => _repository.dailyLimit;
}
