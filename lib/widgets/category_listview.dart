import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_widget.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    Key? key,
  }) : super(key: key);

  final List<CategoryModel> categories = const [
    CategoryModel(
      categoryName: 'Sport',
      imageUrl: 'assets/sports.png',
    ),
    CategoryModel(
      categoryName: 'Business',
      imageUrl: 'assets/business.jpg',
    ),
    CategoryModel(
      categoryName: 'Health',
      imageUrl: 'assets/health.jpeg',
    ),
    CategoryModel(
      categoryName: 'Entertainment',
      imageUrl: 'assets/enter.png',
    ),
    CategoryModel(
      categoryName: 'Technology',
      imageUrl: 'assets/tech.png',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryWidget(category: categories[index]);
          },
          itemCount: categories.length),
    );
  }
}
