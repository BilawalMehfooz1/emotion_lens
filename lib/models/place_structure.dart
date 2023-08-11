import 'package:uuid/uuid.dart';

const uuid = Uuid();

class PlaceStructure {
  PlaceStructure({required this.title}) : id = uuid.v4();
  final String id;
  final String title;
}
