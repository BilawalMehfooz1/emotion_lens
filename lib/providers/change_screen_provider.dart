import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';
import 'package:emotion_lens/screens/add_place_screen.dart';
import 'package:emotion_lens/screens/favorite_places_screen.dart';
import 'package:emotion_lens/screens/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangeScreenNotifier extends StateNotifier<int> {
  ChangeScreenNotifier() : super(0);

  void changeScreen(int index) {
    state = index;
  }

  Tuple2<Widget, String> currentScreenData(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    switch (state) {
      case 1:
        return Tuple2(
          const AddPlaceScreen(),
          isDarkMode
              ? 'assets/images/appbardark_title2.svg'
              : 'assets/images/appbar_title2.svg',
        );
      case 2:
        return Tuple2(
          const FavoritePlacesScreen(),
          isDarkMode
              ? 'assets/images/appbardark_title3.svg'
              : 'assets/images/appbar_title3.svg',
        );
      default:
        return Tuple2(
          const HomeScreen(),
          isDarkMode
              ? 'assets/images/appbardark_title1.svg'
              : 'assets/images/appbar_title1.svg',
        );
    }
  }
}

final changeScreenProvider =
    StateNotifierProvider<ChangeScreenNotifier, int>((ref) {
  return ChangeScreenNotifier();
});
