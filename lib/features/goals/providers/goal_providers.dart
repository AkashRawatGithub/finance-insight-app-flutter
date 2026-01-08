
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/providers/hive_providers.dart';
import '../data/goal_repository_impl.dart';
import '../domain/goal_repository.dart';

final goalRepositoryProvider = Provider<GoalRepository>((ref) {
  final box = ref.watch(goalBoxProvider);
  return GoalRepositoryImpl(box);
});
