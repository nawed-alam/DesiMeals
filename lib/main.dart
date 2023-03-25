import 'package:desi_meals/categories_screen.dart';
import 'package:desi_meals/category_meals_screen.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DesiMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.amber),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
       bodySmall: TextStyle(
        color: Color.fromRGBO(20, 51, 51, 1),
       ),
       bodyLarge: TextStyle(
        color: Color.fromRGBO(20, 51, 51, 1),
       ),
       titleMedium: TextStyle(
        fontSize: 20 ,
        fontFamily: 'RobotoCondensed',
        fontWeight:FontWeight.bold,
       )
        )

      ),
     // home: CategoriesScreen(),
     initialRoute: '/ ',
      routes: {
        '/':(context) => CategoriesScreen(),
        '/category-meals' :(context) => CategoryMealsScreen(),
      },
    );
  }
}

