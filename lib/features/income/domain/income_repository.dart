import 'income_model.dart';

abstract class IncomeRepository {
  Future<void> addIncome(Income income);
  Future<void> updateIncome(Income income);
  Future<void> deleteIncome(String id);
  Future<List<Income>> getAllIncomes();
  Future<double> getTotalMonthlyIncome();
}
