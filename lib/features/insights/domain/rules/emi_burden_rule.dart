import '../financial_snapshot.dart';
import '../insight_model.dart';
import '../insight_rule.dart';
import '../insight_severity.dart';

class EmiBurdenRule implements InsightRule {
  @override
  Insight? evaluate(FinancialSnapshot snapshot) {
    if (snapshot.totalEmi > snapshot.totalIncome * 0.4) {
      return const Insight(
        id: 'emi_burden',
        title: 'High EMI Burden',
        message: 'Your EMIs exceed 40% of your income.',
        severity: InsightSeverity.critical,
      );
    }
    return null;
  }
}
