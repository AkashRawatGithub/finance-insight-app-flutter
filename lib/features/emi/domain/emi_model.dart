import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'emi_model.g.dart';

@HiveType(typeId: 3)
class Emi extends Equatable {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String lenderName; // Bank / NBFC

  @HiveField(2)
  final double monthlyAmount;

  @HiveField(3)
  final DateTime startDate;

  @HiveField(4)
  final DateTime endDate;

  @HiveField(5)
  final double interestRate; // % yearly

  const Emi({
    required this.id,
    required this.lenderName,
    required this.monthlyAmount,
    required this.startDate,
    required this.endDate,
    required this.interestRate,
  });

  int get tenureInMonths {
    return (endDate.year - startDate.year) * 12 +
        (endDate.month - startDate.month);
  }

  @override
  List<Object?> get props =>
      [id, lenderName, monthlyAmount, startDate, endDate, interestRate];
}
