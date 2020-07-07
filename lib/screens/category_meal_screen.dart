import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealScreen extends StatelessWidget {
  static const navigationName = '/category_meal_screen';
  @override 
  Widget build(BuildContext context){
    final navigationArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = navigationArgs['title'];
    final categoryId = navigationArgs['id'];

    final categoryMeals = DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: ListView.builder(
        itemBuilder: (context, idx) {
          return MealItem(
            title: categoryMeals[idx].title ,
            affordability: categoryMeals[idx].affordability,
            complexity: categoryMeals[idx].complexity,
            duration: categoryMeals[idx].duration,
            imageUrl: categoryMeals[idx].imageUrl,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}