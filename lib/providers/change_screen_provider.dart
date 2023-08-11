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

  // This method retrieves both the widget and its title based on the current index
  Tuple2<Widget, String> get currentScreenData {
    switch (state) {
      case 1:
        return const Tuple2(AddPlaceScreen(), 'Add new Place');
      case 2:
        return const Tuple2(FavoritePlacesScreen(), 'Favorite Places');
      default:
        return const Tuple2(HomeScreen(), 'Your Places');
    }
  }
}

final changeScreenProvider =
    StateNotifierProvider<ChangeScreenNotifier, int>((ref) {
  return ChangeScreenNotifier();
});
