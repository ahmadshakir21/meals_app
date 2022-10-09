import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "/meal-detail";

  Widget buildSectionTitle(BuildContext context, String title) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ));
  }

  Widget buildContainer({required Widget child}) {
    return Container(
      height: 200,
      width: 360,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meals) => meals.id == mealId);
    // final route = ModalRoute.of(context);
    // // This will NEVER fail
    // if (route == null) return SizedBox.shrink();
    // final routeArgs = route.settings.routeArgs;
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          buildSectionTitle(context, "Ingredients"),
          buildContainer(
            child: ListView.builder(
              itemCount: selectedMeal.ingredients.length,
              itemBuilder: (context, index) => Card(
                color: Colors.amber,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(selectedMeal.ingredients[index]),
                ),
              ),
            ),
          ),
          buildSectionTitle(context, "Steps"),
          buildContainer(
            child: ListView.builder(
              itemCount: selectedMeal.steps.length,
              itemBuilder: (context, index) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(child: Text("# ${(index + 1)}")),
                    title: Text(selectedMeal.steps[index]),
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
