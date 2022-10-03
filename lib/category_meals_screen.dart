import 'package:flutter/material.dart';
import 'package:meals_app/model/category.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen({required this.categoryId, required this.categoryTitle});

  static const namedRoute = "/category-meals-screen";

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle!)),
      // body: ListView.builder(
      //   itemBuilder: (context, index) {},
      // ),
    );
  }
}
