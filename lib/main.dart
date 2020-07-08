import 'package:flutter/material.dart';

import './screens/categories_screen.dart';
import './screens/category_meal_screen.dart';
import './screens/detail_screen.dart';
import './screens/bottom_tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue[600] ,
        accentColor: Colors.blue[100],
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          headline6: TextStyle(
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold
          )
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: CategoriesScreen(),
      //initialRoute: '/',
      routes: {
        '/': (context) => BottomTabs(),
        CategoryMealScreen.navigationName: (context) => CategoryMealScreen(),
        MealDetailScreen.navigationName : (context) => MealDetailScreen(),
      },
    );
  }
}
