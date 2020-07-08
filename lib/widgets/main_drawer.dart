import 'package:flutter/material.dart';

import '../screens/filter_screen.dart';

class MainDrawer extends StatelessWidget{

  Widget buildListTile(String title, IconData icon, Function tapHandler){
    return ListTile(
            onTap: tapHandler,
            leading: Icon(icon, size: 26),
            title: Text(title, style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
          );
  } 


  @override 
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).accentColor,
            alignment: Alignment.centerLeft,
            child: Text(
              'Yummy...',
              style:TextStyle(
                fontFamily: 'Raleway',
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 20,),
          buildListTile(
            'Meals', 
            Icons.restaurant,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            }
          ),
          buildListTile(
            'Filters', 
            Icons.settings,
            () {
              Navigator.of(context).pushReplacementNamed(FilterScreen.navigationName);
            }
          )
        ],
      ),
    );

  }
}