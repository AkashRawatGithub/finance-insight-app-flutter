import 'package:equatable/equatable.dart';
import 'insight_severity.dart';

class Insight extends Equatable {
  final String id;
  final String title;
  final String message;
  final InsightSeverity severity;

  const Insight({
    required this.id,
    required this.title,
    required this.message,
    required this.severity,
  });

  @override
  List<Object?> get props => [id, title, message, severity];
}
