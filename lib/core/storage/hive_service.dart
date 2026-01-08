import 'package:hive/hive.dart';
import '../../features/income/domain/income_model.dart';
import '../../features/expenses/domain/expense_model.dart';
import '../../features/emi/domain/emi_model.dart';
import '../../features/goals/domain/goal_model.dart';
import 'box_names.dart';

class HiveService {
  static Future<void> openBoxes() async {
    await Hive.openBox<Income>(BoxNames.income);
    await Hive.openBox<Expense>(BoxNames.expense);
    await Hive.openBox<Emi>(BoxNames.emi);
    await Hive.openBox<Goal>(BoxNames.goal);
  }
}
