import 'package:emotion_lens/screens/favorite_places_screen.dart';
import 'package:flutter/material.dart';
import 'package:emotion_lens/screens/home_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeScreen();
    String activePageTitle = 'Your Places';

    if (_selectedPageIndex == 2) {
      activePage = const FavoritePlacesScreen();
      activePageTitle = 'Favorite Places';
    }

    return Scaffold(
      // AppBar
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.settings, color: Colors.black),
          onPressed: () {},
          tooltip: 'Settings',
        ),
        title: Text(activePageTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.book, color: Colors.black),
            onPressed: () {},
            tooltip: 'Daily Ayat',
          ),
        ],
      ),

      //Bottom NavigationBar
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Places',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          )
        ],
      ),
      body: activePage,
    );
  }
}
