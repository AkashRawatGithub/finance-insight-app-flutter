import 'package:hive/hive.dart';
import '../../../core/storage/box_names.dart';
import '../domain/income_model.dart';
import '../domain/income_repository.dart';

class IncomeRepositoryImpl implements IncomeRepository {
  final Box<Income> box;

  IncomeRepositoryImpl(this.box);

  @override
  Future<void> addIncome(Income income) async {
    await box.put(income.id, income);
  }

  @override
  Future<void> updateIncome(Income income) async {
    await box.put(income.id, income);
  }

  @override
  Future<void> deleteIncome(String id) async {
    await box.delete(id);
  }

  @override
  Future<List<Income>> getAllIncomes() async {
    return box.values.toList();
  }

  @override
  Future<double> getTotalMonthlyIncome() async {
    return box.values.fold<double>(
      0,
          (sum, income) => sum + income.amount,
    );
  }
}
