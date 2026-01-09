import '../financial_snapshot.dart';
import '../insight_model.dart';
import '../insight_rule.dart';
import '../insight_severity.dart';

class LowSavingsRule implements InsightRule {
  @override
  Insight? evaluate(FinancialSnapshot snapshot) {
    if (snapshot.savings < snapshot.totalIncome * 0.2) {
      return const Insight(
        id: 'low_savings',
        title: 'Low Savings Rate',
        message: 'You are saving less than 20% of your income.',
        severity: InsightSeverity.info,
      );
    }
    return null;
  }
}
