import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:emotion_lens/models/place_structure.dart';

class AddPlacesNotifier extends StateNotifier<List<PlaceStructure>> {
  AddPlacesNotifier() : super(const []);

  void addPlace(String title) {
    final newPlace = PlaceStructure(title: title);
    state = [newPlace, ...state];
  }
}

final addPlacesProvider =
    StateNotifierProvider<AddPlacesNotifier, List<PlaceStructure>>(
  (ref) {
    return AddPlacesNotifier();
  },
);
