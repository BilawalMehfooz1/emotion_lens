import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:emotion_lens/models/place_structure.dart';

class AddPlacesNotifier extends StateNotifier<List<PlaceStructure>> {
  AddPlacesNotifier() : super(const []);

  void addPlace(String title, File image, PlaceLocation location) {
    final newPlace = PlaceStructure(
      title: title,
      image: image,
      location: location,
    );
    state = [newPlace, ...state];
  }
}

final addPlacesProvider =
    StateNotifierProvider<AddPlacesNotifier, List<PlaceStructure>>(
  (ref) {
    return AddPlacesNotifier();
  },
);
