import 'package:desi_meals/screens/categories_screen.dart';
import 'package:desi_meals/screens/favorites_screen.dart';
import 'package:desi_meals/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  final List<Map<String,Object>> _pages =[
   {'page':const CategoriesScreen(),'title' : 'Catergories'},
    {'page': const FavoritesScreen() , 'title':'Your Favorite'},
  ];
  int _selectedPageIndex =0;
  void _selectePage(int index){
 setState(() {
   _selectedPageIndex =index;
 });
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'].toString()),
        backgroundColor: Theme.of(context).primaryColor,
    ),
    drawer: MainDrawer(),
 body:_pages[_selectedPageIndex]['page'] as Widget,
 bottomNavigationBar: BottomNavigationBar(
  onTap: _selectePage,
  backgroundColor: Theme.of(context).primaryColor,
  unselectedItemColor: Colors.white,
  selectedItemColor: Theme.of(context).colorScheme.secondary,
  currentIndex: _selectedPageIndex,
  type: BottomNavigationBarType.shifting,
  items: [
BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,icon: Icon(Icons.category),label: 'Categories'),
BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,icon: Icon(Icons.star),label: 'Favorites'),

 ]),
    );
  }
}