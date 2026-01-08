import 'emi_model.dart';

abstract class EmiRepository {
  Future<void> addEmi(Emi emi);
  Future<void> deleteEmi(String id);
  Future<List<Emi>> getAllEmis();
  Future<double> getTotalMonthlyEmi();
}

