import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:emotion_lens/providers/change_screen_provider.dart';

class TabsScreen extends ConsumerWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final changeScreenState = ref.watch(changeScreenProvider);
    final currentScreenData =
        ref.read(changeScreenProvider.notifier).currentScreenData(context);

    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: Text(currentScreenData.item2), // Using the title from Tuple
        actions: [
          IconButton(
            icon: const Icon(Icons.menu_book_outlined),
            onPressed: () {},
            tooltip: 'Daily Ayat',
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
            tooltip: 'Daily Ayat',
          ),
        ],
      ),

      //Bottom NavigationBar
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          ref.read(changeScreenProvider.notifier).changeScreen(index);
        },
        currentIndex: changeScreenState,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false, // Globally hide labels when selected
        showUnselectedLabels: false, // Globally hide labels when not selected
        items: [
          BottomNavigationBarItem(
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  changeScreenState == 0 ? Icons.home : Icons.home_outlined,
                  size: 25,
                ),
                const Text(
                  'Home',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Center(
              // This centers the icon
              child: Icon(
                changeScreenState == 1
                    ? Icons.add_circle
                    : Icons.add_circle_outline,
                size: 35,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  changeScreenState == 2
                      ? Icons.favorite
                      : Icons.favorite_border,
                  size: 25,
                ),
                const Text(
                  'Favorites',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            label: '',
          ),
        ],
      ),

      body: currentScreenData.item1, // Using the widget from Tuple
    );
  }
}
