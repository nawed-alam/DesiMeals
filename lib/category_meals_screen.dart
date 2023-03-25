import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  //final String categoryid;
  //final String categorytitle;
  //const CategoryMealsScreen(this.categoryid,this.categorytitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs = 
    ModalRoute.of(context)!.settings.arguments as Map<String,String> ;
    final categorytitle  = routeArgs['title'];
    final categoryid  = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle!),
      ),
      body: Center(
        child: Text('The Recipes for the Category!'),
      ),
    );
  }
}