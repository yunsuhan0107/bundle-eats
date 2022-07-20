import 'package:flutter/material.dart';
import 'package:bundle_eats/models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              category.name,
              style: const TextStyle(
                color: Color(0xffacacac),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
