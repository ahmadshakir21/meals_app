import 'package:flutter/material.dart';
import 'package:meals_app/widget/category_item.dart';
import 'package:meals_app/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DeliMeals")),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                  id: catData.id, title: catData.title, color: catData.color),
            )
            .toList(),
      ),
    );
  }
}
