import 'package:flutter/material.dart';
import 'package:emotion_lens/models/place_structure.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({
    super.key,
    this.location = const PlaceLocation(
      latitude: 33.1496943,
      longitude: 73.7451016,
      address: 'Mirpur University of Science and Technology (MUST)',
    ),
    this.isSelecting = true,
  });

  final PlaceLocation? location;
  final isSelecting;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.isSelecting ? 'Pick Your Location' : 'Your Location',
        ),
        actions: [
          (widget.isSelecting)
              ? IconButton(
                  icon: const Icon(
                    Icons.save_outlined,
                  ),
                  onPressed: () {},
                )
              : const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.save,
                  ),
                ),
        ],
      ),
      body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(
              widget.location!.latitude,
              widget.location!.longitude,
            ),
            zoom: 16,
          ),
          markers: {
            Marker(
                markerId: const MarkerId('m1'),
                position: LatLng(
                  widget.location!.latitude,
                  widget.location!.longitude,
                )),
          }),
    );
  }
}
