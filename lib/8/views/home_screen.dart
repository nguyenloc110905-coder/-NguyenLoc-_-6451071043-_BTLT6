import 'package:flutter/material.dart';
import 'confirm_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _message = 'Chưa có hành động.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm Action'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'MSSV: 6451071043 - Nguyen Loc',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 32),
            const Icon(Icons.warning_amber_rounded, size: 80, color: Colors.red),
            const SizedBox(height: 24),
            Text(
              _message,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () async {
                final bool? result = await Navigator.push<bool>(
                  context,
                  MaterialPageRoute(builder: (_) => const ConfirmScreen()),
                );
                setState(() {
                  if (result == true) {
                    _message = 'Đã chọn: XÓA';
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Đã thực hiện xóa!'))
                    );
                  } else if (result == false) {
                    _message = 'Đã chọn: KHÔNG';
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Đã hủy thao tác.'))
                    );
                  }
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
              child: const Text('Delete Item'),
            ),
          ],
        ),
      ),
    );
  }
}
