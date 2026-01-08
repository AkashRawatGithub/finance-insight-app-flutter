import 'package:hive/hive.dart';
import '../../../core/storage/box_names.dart';
import '../domain/expense_model.dart';
import '../domain/expense_repository.dart';

class ExpenseRepositoryImpl implements ExpenseRepository {
  final Box<Expense> box;

  ExpenseRepositoryImpl(this.box);

  @override
  Future<void> addExpense(Expense expense) async {
    await box.put(expense.id, expense);
  }

  @override
  Future<void> updateExpense(Expense expense) async {
    await box.put(expense.id, expense);
  }

  @override
  Future<void> deleteExpense(String id) async {
    await box.delete(id);
  }

  @override
  Future<List<Expense>> getAllExpenses() async {
    return box.values.toList();
  }

  @override
  Future<double> getTotalMonthlyExpense() async {
    return box.values.fold<double>(
      0,
          (sum, expense) => sum + expense.amount,
    );
  }
}
