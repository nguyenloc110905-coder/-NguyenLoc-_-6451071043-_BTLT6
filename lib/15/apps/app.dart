import 'package:flutter/material.dart';
import '../views/settings_screen.dart';

class Bai15App extends StatelessWidget {
  const Bai15App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bài 15 - 6451071043',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const SettingsScreen(),
    );
  }
}
