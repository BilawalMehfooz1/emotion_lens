import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:emotion_lens/providers/change_screen_provider.dart';

class TabsScreen extends ConsumerWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final changeScreenState = ref.watch(changeScreenProvider);
    final currentScreenData =
        ref.read(changeScreenProvider.notifier).currentScreenData;

    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: Text(currentScreenData.item2), // Using the title from Tuple
        actions: [
          IconButton(
            icon: const Icon(Icons.menu_book),
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
          ref
              .read(changeScreenProvider.notifier)
              .changeScreen(index); // Changing the screen using notifier
        },
        currentIndex: changeScreenState, // Using the state as currentIndex
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            label: 'Memories',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              size: 30,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 30,
            ),
            label: 'Favorites',
          )
        ],
      ),
      body: currentScreenData.item1, // Using the widget from Tuple
    );
  }
}
