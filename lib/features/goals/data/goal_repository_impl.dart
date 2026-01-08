import 'package:hive/hive.dart';
import '../../../core/storage/box_names.dart';
import '../domain/goal_model.dart';
import '../domain/goal_repository.dart';

class GoalRepositoryImpl implements GoalRepository {
  final Box<Goal> box;

  GoalRepositoryImpl(this.box);

  @override
  Future<void> addGoal(Goal goal) async {
    await box.put(goal.id, goal);
  }

  @override
  Future<void> updateGoal(Goal goal) async {
    await box.put(goal.id, goal);
  }

  @override
  Future<void> deleteGoal(String id) async {
    await box.delete(id);
  }

  @override
  Future<List<Goal>> getAllGoals() async {
    return box.values.toList();
  }
}
