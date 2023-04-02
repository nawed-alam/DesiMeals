import 'package:desi_meals/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});
static const routeName ='/filter';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Your Filters"),
      backgroundColor:Theme.of(context).primaryColor,
      ),
      drawer: MainDrawer(),
      body: Center(child: Text('Filters Screen'),),
    );
  }
}