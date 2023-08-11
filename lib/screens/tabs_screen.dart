import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:emotion_lens/providers/change_screen_provider.dart';

class TabsScreen extends ConsumerWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final changeScreenState = ref.watch(changeScreenProvider); 
    final currentScreenData = ref.read(changeScreenProvider.notifier).currentScreenData;
    
    return Scaffold(
      // AppBar
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.settings, color: Colors.black),
          onPressed: () {},
          tooltip: 'Settings',
        ),
        title: Text(currentScreenData.item2), // Using the title from Tuple
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
        onTap: (index) {
          ref.read(changeScreenProvider.notifier).changeScreen(index); // Changing the screen using notifier
        },
        currentIndex: changeScreenState, // Using the state as currentIndex
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
      body: currentScreenData.item1, // Using the widget from Tuple
    );
  }
}
