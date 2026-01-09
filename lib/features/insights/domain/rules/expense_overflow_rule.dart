import '../financial_snapshot.dart';
import '../insight_model.dart';
import '../insight_rule.dart';
import '../insight_severity.dart';


class ExpenseOverflowRule implements InsightRule {
  @override
  Insight? evaluate(FinancialSnapshot snapshot) {
    if (snapshot.totalExpense > snapshot.totalIncome * 0.6) {
      return const Insight(
        id: 'expense_overflow',
        title: 'High Spending Detected',
        message: 'Your expenses exceed 60% of your income.',
        severity: InsightSeverity.warning,
      );
    }
    return null;
  }
}
