import 'financial_snapshot.dart';
import 'insight_model.dart';

abstract class InsightRule {
  Insight? evaluate(FinancialSnapshot snapshot);
}
