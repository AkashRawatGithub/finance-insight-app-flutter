import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/providers/hive_providers.dart';
import '../data/expense_repository_impl.dart';
import '../domain/expense_repository.dart';

final expenseRepositoryProvider = Provider<ExpenseRepository>((ref) {
  final box = ref.watch(expenseBoxProvider);
  return ExpenseRepositoryImpl(box);
});
