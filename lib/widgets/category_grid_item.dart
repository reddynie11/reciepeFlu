import 'package:flutter/material.dart';

class CategoryGridItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoryGridItem(this.title, this.color);

  @override 
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(title, style: Theme.of(context).textTheme.headline6,),
      //color: color,
      decoration: BoxDecoration(color:color,borderRadius: BorderRadius.circular(10)),
    );
  }
}