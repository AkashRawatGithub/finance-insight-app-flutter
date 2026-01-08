import 'package:hive/hive.dart';
import '../../../core/storage/box_names.dart';
import '../domain/emi_model.dart';
import '../domain/emi_repository.dart';

class EmiRepositoryImpl implements EmiRepository {
  final Box<Emi> box;

  EmiRepositoryImpl(this.box);

  @override
  Future<void> addEmi(Emi emi) async {
    await box.put(emi.id, emi);
  }

  @override
  Future<void> deleteEmi(String id) async {
    await box.delete(id);
  }

  @override
  Future<List<Emi>> getAllEmis() async {
    return box.values.toList();
  }

  @override
  Future<double> getTotalMonthlyEmi() async {
    return box.values.fold<double>(
      0,
          (sum, emi) => sum + emi.monthlyAmount,
    );
  }
}
