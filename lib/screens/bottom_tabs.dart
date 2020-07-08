import 'package:flutter/material.dart';

import './categories_screen.dart';
import './favorites_screen.dart';
import '../widgets/main_drawer.dart';

class BottomTabs extends StatefulWidget{
  @override 
  _BottomTabsState createState(){
    return _BottomTabsState();
  }
}

class _BottomTabsState extends State<BottomTabs>{

  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page' : FavoriteScreen(), 'title' : 'Favorites'},
  ];

  int _selectedPageIdx = 0;

  void _selectedTab(int index){
    setState(() {
      _selectedPageIdx = index;
    });
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIdx]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIdx]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedTab,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIdx,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Favorites')
          ),
        ],
      ),
    );
  }
}