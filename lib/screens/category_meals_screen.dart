import 'package:desi_meals/dummy_data.dart';
import 'package:desi_meals/models/meal.dart';
import 'package:desi_meals/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatefulWidget {
  //final String categoryid;
  //final String categorytitle;
  //const CategoryMealsScreen(this.categoryid,this.categorytitle);
  static const routeName = '/category-meals';

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {

 late String categoryTitle;
late List<Meal>  displayMeals;
var _loadedInitData = false;

@override
  void initState() {
   
    super.initState();
  }

@override
  void didChangeDependencies() {
    if(!_loadedInitData)
    {
     final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
     categoryTitle = routeArgs['title']!;
    final categoryid = routeArgs['id'];
    displayMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryid); 
    }).toList();
    }
    _loadedInitData = true;
  }

  void _removeMeal(String mealId)
  {
      setState(() {
        displayMeals.removeWhere((meal) => meal.id == mealId);
      });
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
       backgroundColor: Theme.of(context).primaryColor,

      ),
      body: ListView.builder(
        itemBuilder: (cxt, index) {
          return MealItem(
            id: displayMeals[index].id,
              title: displayMeals[index].title,
              imageUrl: displayMeals[index].imageUrl,
              duration: displayMeals[index].duration,
              affordability: displayMeals[index].affordability,
              complexity: displayMeals[index].complexity,
              removeItem: _removeMeal,);
        },
        itemCount: displayMeals.length,
      ),
    );
  }
}
