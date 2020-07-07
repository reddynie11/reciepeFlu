import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  static const navigationName = '/category_meal_screen';
  @override 
  Widget build(BuildContext context){
    final navigationArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = navigationArgs['title'];
    
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: Center(
       child: Text('THe Category Reciepe page')
      ) ,
    );
  }
}