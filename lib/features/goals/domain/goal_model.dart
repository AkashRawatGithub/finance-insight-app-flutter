import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'goal_model.g.dart';

@HiveType(typeId: 4)
class Goal extends Equatable {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title; // House, Car, Emergency Fund

  @HiveField(2)
  final double targetAmount;

  @HiveField(3)
  final double currentSavings;

  @HiveField(4)
  final DateTime targetDate;

  const Goal({
    required this.id,
    required this.title,
    required this.targetAmount,
    required this.currentSavings,
    required this.targetDate,
  });

  double get remainingAmount =>
      (targetAmount - currentSavings).clamp(0, targetAmount);

  int get monthsLeft {
    final now = DateTime.now();
    return (targetDate.year - now.year) * 12 +
        (targetDate.month - now.month);
  }

  double get requiredMonthlySaving {
    if (monthsLeft <= 0) return remainingAmount;
    return remainingAmount / monthsLeft;
  }

  @override
  List<Object?> get props =>
      [id, title, targetAmount, currentSavings, targetDate];
}
