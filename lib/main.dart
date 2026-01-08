import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/storage/hive_service.dart';

import 'features/income/domain/income_model.dart';
import 'features/expenses/domain/expense_model.dart';
import 'features/emi/domain/emi_model.dart';
import 'features/goals/domain/goal_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  await Hive.initFlutter();

  Hive.registerAdapter(IncomeAdapter());
  Hive.registerAdapter(ExpenseAdapter());
  Hive.registerAdapter(EmiAdapter());
  Hive.registerAdapter(GoalAdapter());


  await HiveService.openBoxes();


  runApp(
    const ProviderScope(
      child: FinanceInsightApp(),
    ),
  );
}

class FinanceInsightApp extends StatelessWidget {
  const FinanceInsightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance Insight',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
        useMaterial3: true,
      ),
      home: const AppBootstrapPage(),
    );
  }
}


class AppBootstrapPage extends StatelessWidget {
  const AppBootstrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Finance Insight App ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
