import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryid;
  final String categorytitle;
  const CategoryMealsScreen(this.categoryid,this.categorytitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle),
      ),
      body: Center(
        child: Text('The Recipes for the Category!'),
      ),
    );
  }
}