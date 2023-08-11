import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:emotion_lens/models/place_structure.dart';

class AddPlacesNotifier extends StateNotifier<List<PlaceStructure>> {
  AddPlacesNotifier() : super(const []);

  void addPlace(String title, File image) {
    final newPlace = PlaceStructure(title: title, image: image);
    state = [newPlace, ...state];
  }
}

final addPlacesProvider =
    StateNotifierProvider<AddPlacesNotifier, List<PlaceStructure>>(
  (ref) {
    return AddPlacesNotifier();
  },
);
