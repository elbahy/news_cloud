import 'package:flutter/material.dart';
import 'package:news_cloud/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 160,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(category.imageUrl),
                opacity: .8),
            borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            category.categoryName,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                shadows: [
                  Shadow(
                      color: Colors.orange,
                      offset: Offset(1.0, 1.0),
                      blurRadius: 8.0)
                ]),
          ),
        ),
      ),
    );
  }
}
