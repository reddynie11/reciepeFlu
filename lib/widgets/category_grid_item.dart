import 'package:flutter/material.dart';

import '../screens/category_meal_screen.dart';

class CategoryGridItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryGridItem(this.id, this.title, this.color);
  
  void selectedCategory(BuildContext context){
    Navigator.of(context).pushNamed(
      CategoryMealScreen.navigationName, 
      arguments: {
        'id' : id,
        'title': title
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedCategory(context),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        //color: color,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [color.withOpacity(0.5), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
      ),
    );
  }
}
