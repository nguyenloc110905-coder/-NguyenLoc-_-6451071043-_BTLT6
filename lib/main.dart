import 'package:flutter/material.dart';
import '1/apps/app.dart' as b1;
import '4/apps/app.dart' as b4;
import '8/apps/app.dart' as b8;
import '11/apps/app.dart' as b11;
import '15/apps/app.dart' as b15;

const String mssv = '6451071043';

void main() {
  runApp(const MainMenuApp());
}

class MainMenuApp extends StatelessWidget {
  const MainMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BTLT6 - Nguyen Loc - $mssv',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainMenuScreen(),
    );
  }
}

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final exercises = [
      _ExerciseItem(
        number: 1,
        title: 'Home → About',
        description: 'Named Routes Navigation',
        color: Colors.blue,
        icon: Icons.home,
        app: const b1.Bai1App(),
      ),
      _ExerciseItem(
        number: 4,
        title: 'Product List → Detail',
        description: 'Passing Data to Next Screen',
        color: Colors.green,
        icon: Icons.shopping_bag,
        app: const b4.Bai4App(),
      ),
      _ExerciseItem(
        number: 8,
        title: 'Confirm Screen',
        description: 'Return Confirmation (Yes/No)',
        color: Colors.red,
        icon: Icons.check_circle,
        app: const b8.Bai8App(),
      ),
      _ExerciseItem(
        number: 11,
        title: 'App Tin Tức',
        description: 'Drawer + TabBar + Navigation',
        color: Colors.orange,
        icon: Icons.newspaper,
        app: const b11.Bai11App(),
      ),
      _ExerciseItem(
        number: 15,
        title: 'App Cài Đặt',
        description: 'Dialogs & Return Data',
        color: Colors.purple,
        icon: Icons.settings,
        app: const b15.Bai15App(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('BTLT6 - 6451071043'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: Colors.deepPurple.shade50,
            child: const Column(
              children: [
                Text(
                  'Nguyen Loc',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('MSSV: 6451071043'),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: exercises.length,
              itemBuilder: (context, index) {
                final ex = exercises[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: ex.color,
                      child: Icon(ex.icon, color: Colors.white),
                    ),
                    title: Text('Bài ${ex.number}: ${ex.title}'),
                    subtitle: Text(ex.description),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ex.app),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ExerciseItem {
  final int number;
  final String title;
  final String description;
  final Color color;
  final IconData icon;
  final Widget app;

  _ExerciseItem({required this.number, required this.title, required this.description, required this.color, required this.icon, required this.app});
}
