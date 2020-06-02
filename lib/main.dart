import 'package:flutter/material.dart';
//import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'ultis/app_routes.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vamos conzinhar?',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          headline6:  TextStyle( 
              fontFamily: "RobotoCondensed",
              fontSize: 20,
          ),
        ),
      ),
     /// initialRoute: , definir uma rota inicial 
      routes:{
        AppRoutes.HOME : (ctx) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS :  (ctx) => CategoriesMealsScreen(),
         AppRoutes.MEAL_DETAIL :  (ctx) => MealDetailScreen(),
      } , // Rotas
    );
  }
}

