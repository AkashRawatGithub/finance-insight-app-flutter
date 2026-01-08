import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

import '../storage/box_names.dart';
import '../../features/income/domain/income_model.dart';
import '../../features/expenses/domain/expense_model.dart';
import '../../features/emi/domain/emi_model.dart';
import '../../features/goals/domain/goal_model.dart';

final incomeBoxProvider = Provider<Box<Income>>((ref) {
  return Hive.box<Income>(BoxNames.income);
});

final expenseBoxProvider = Provider<Box<Expense>>((ref) {
  return Hive.box<Expense>(BoxNames.expense);
});

final emiBoxProvider = Provider<Box<Emi>>((ref) {
  return Hive.box<Emi>(BoxNames.emi);
});

final goalBoxProvider = Provider<Box<Goal>>((ref) {
  return Hive.box<Goal>(BoxNames.goal);
});
