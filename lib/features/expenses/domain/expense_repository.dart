import 'expense_model.dart';

abstract class ExpenseRepository {
  Future<void> addExpense(Expense expense);
  Future<void> updateExpense(Expense expense);
  Future<void> deleteExpense(String id);
  Future<List<Expense>> getAllExpenses();
  Future<double> getTotalMonthlyExpense();
}
