import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/providers/hive_providers.dart';
import '../data/income_repository_impl.dart';
import '../domain/income_model.dart';
import '../domain/income_repository.dart';
import '../presentation/income_notifier.dart';

final incomeRepositoryProvider = Provider<IncomeRepository>((ref) {
  final box = ref.watch(incomeBoxProvider);
  return IncomeRepositoryImpl(box);
});

final incomeNotifierProvider =
StateNotifierProvider<IncomeNotifier, AsyncValue<List<Income>>>((ref) {
  final repo = ref.watch(incomeRepositoryProvider);
  return IncomeNotifier(repo);
});
