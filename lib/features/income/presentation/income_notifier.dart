import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/income_model.dart';
import '../domain/income_repository.dart';

class IncomeNotifier extends StateNotifier<AsyncValue<List<Income>>> {
  final IncomeRepository repository;

  IncomeNotifier(this.repository) : super(const AsyncLoading()) {
    loadIncomes();
  }

  Future<void> loadIncomes() async {
    try {
      final data = await repository.getAllIncomes();
      state = AsyncData(data);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> addIncome(Income income) async {
    await repository.addIncome(income);
    loadIncomes();
  }
}
