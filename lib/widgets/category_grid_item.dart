import 'package:flutter/material.dart';

import '../screens/category_meal_screen.dart';

class CategoryGridItem extends StatelessWidget {
  final String id;
  final String title;
  final String color;

  CategoryGridItem(this.id, this.title, this.color);

  void selectedCategory(BuildContext context) {
    Navigator.of(context).pushNamed(CategoryMealScreen.navigationName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedCategory(context),
      child: Container(
        
        decoration:
            BoxDecoration(
              image: DecorationImage(image: NetworkImage(color)),
              borderRadius: BorderRadius.circular(10)
            ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), 
            color: Colors.black54
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Roboto', color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
