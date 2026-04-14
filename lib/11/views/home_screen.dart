import 'package:flutter/material.dart';
import '../models/article.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Article> articles = [
      Article(title: 'Tin tức công nghệ mới nhất', content: 'Chi tiết về tin tức công nghệ...'),
      Article(title: 'Bóng đá hôm nay', content: 'Cập nhật tỉ số bóng đá...'),
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('VNExpress Clone - 6451071043'),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Tin mới'),
              Tab(text: 'Tin hot'),
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('Nguyen Loc'),
                accountEmail: Text('MSSV: 6451071043'),
                currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
              ),
              ListTile(
                title: const Text('Trang chủ'),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: const Text('Thể thao'),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: const Text('Công nghệ'),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(articles[index].title),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => DetailScreen(article: articles[index])),
                    );
                  },
                );
              },
            ),
            const Center(child: Text('Tin hot chưa được cập nhật')),
          ],
        ),
      ),
    );
  }
}
