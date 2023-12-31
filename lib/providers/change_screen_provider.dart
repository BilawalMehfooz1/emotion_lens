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
    switch (state) {
      case 1:
        return const Tuple2(AddPlaceScreen(), 'Add new Memory');
      case 2:
        return const Tuple2(FavoritePlacesScreen(), 'Favorite Memories');
      default:
        return const Tuple2(HomeScreen(), 'Memories');
    }
  }
}

final changeScreenProvider =
    StateNotifierProvider<ChangeScreenNotifier, int>((ref) {
  return ChangeScreenNotifier();
});
