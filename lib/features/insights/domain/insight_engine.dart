import 'insight_rule.dart';
import 'insight_model.dart';
import 'financial_snapshot.dart';

class InsightEngine {
  final List<InsightRule> rules;

  InsightEngine(this.rules);

  List<Insight> generateInsights(FinancialSnapshot snapshot) {
    return rules
        .map((rule) => rule.evaluate(snapshot))
        .whereType<Insight>()
        .toList();
  }
}
