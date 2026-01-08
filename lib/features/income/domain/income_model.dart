import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'income_model.g.dart';

@HiveType(typeId: 1)
class Income extends Equatable {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final double amount;

  @HiveField(2)
  final String source; // Salary, Freelance, Business

  @HiveField(3)
  final DateTime receivedDate;

  const Income({
    required this.id,
    required this.amount,
    required this.source,
    required this.receivedDate,
  });

  @override
  List<Object?> get props => [id, amount, source, receivedDate];
}
