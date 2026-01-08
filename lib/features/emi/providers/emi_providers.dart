import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/providers/hive_providers.dart';
import '../data/emi_repository_impl.dart';
import '../domain/emi_repository.dart';

final emiRepositoryProvider = Provider<EmiRepository>((ref) {
  final box = ref.watch(emiBoxProvider);
  return EmiRepositoryImpl(box);
});
