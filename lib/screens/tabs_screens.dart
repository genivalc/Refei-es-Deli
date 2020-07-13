import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';
import '../components/main_drawer.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  const TabsScreen(this.favoriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;
  List<Map<String, Object>> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      {"title": "Lista de Categorias", "screen": CategoriesScreen()},
      {
        "title": "Meus Favoritos",
        "screen": FavoriteScreen(widget.favoriteMeals)
      },
    ];
  }

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(_screens[_selectedScreenIndex]["title"] )
        ,
      ),

      //menu
      drawer: MainDrawer(),

      body: _screens[_selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectScreen,
          backgroundColor: Colors.black87,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.amber,//accentColor,
          currentIndex: _selectedScreenIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              icon: Icon(Icons.category),
              title: Text("Categorias"),
            ),
            BottomNavigationBarItem(
              backgroundColor:  Colors.amber,
              icon: Icon(Icons.star),
              title: Text("Favoritos"),
            ),
          ]),
    );
  }
}
