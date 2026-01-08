import 'goal_model.dart';

abstract class GoalRepository {
  Future<void> addGoal(Goal goal);
  Future<void> updateGoal(Goal goal);
  Future<void> deleteGoal(String id);
  Future<List<Goal>> getAllGoals();
}
