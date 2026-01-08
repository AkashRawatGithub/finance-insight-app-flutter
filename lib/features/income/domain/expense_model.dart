import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'expense_model.g.dart';

@HiveType(typeId: 2)
class Expense extends Equatable {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final double amount;

  @HiveField(2)
  final String category; // Food, Rent, Travel

  @HiveField(3)
  final DateTime date;

  @HiveField(4)
  final String note;

  const Expense({
    required this.id,
    required this.amount,
    required this.category,
    required this.date,
    required this.note,
  });

  @override
  List<Object?> get props => [id, amount, category, date, note];
}
