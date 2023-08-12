import 'dart:io';

import 'package:emotion_lens/providers/add_place_provider.dart';
import 'package:emotion_lens/providers/change_screen_provider.dart';
import 'package:emotion_lens/widgets/image_input.dart';
import 'package:emotion_lens/widgets/location_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController = TextEditingController();
  File? _selectedImage;

  void _savePlace() {
    final enteredTitle = _titleController.text;

    if (enteredTitle.isEmpty || _selectedImage == null) {
      return;
    }

    ref
        .read(addPlacesProvider.notifier)
        .addPlace(enteredTitle, _selectedImage!);
    ref.read(changeScreenProvider.notifier).changeScreen(0);
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: _titleController,
            ),
            const SizedBox(height: 12),
            ImageInput(
              onSelectImage: (image) {
                _selectedImage = image;
              },
            ),
            const SizedBox(height: 10),
           const LocationInput(),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _savePlace,
              icon: const Icon(Icons.add),
              label: const Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
