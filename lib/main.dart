import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_calculator/calculator_provider.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>CalculatorProvider(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
