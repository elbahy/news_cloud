import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/category_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text('Cloud', style: TextStyle(color: Colors.orange))
          ],
        ),
      ),
      body: CategoryListView(),
    );
  }
}
