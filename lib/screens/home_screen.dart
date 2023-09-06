import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/category_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Text(
            'data',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Icon(
            Icons.abc_rounded,
            color: Colors.black,
          )
        ],
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
      body: Column(
        children: [
          const SizedBox(
            height: 80,
            child: CategoryListView(),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/tech.png',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text('titleeeeeeee'),
                    const Text('data')
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
