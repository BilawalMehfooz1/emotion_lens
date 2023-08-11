import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _selectedImage;

  // Taken by camera
  void _takePicture() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(
      source: ImageSource.camera,
      maxWidth: 600,
    );
    if (pickedImage == null) {
      return;
    }
    setState(() {
      _selectedImage = File(pickedImage.path);
    });
  }

  void _fromGalleryImage() async{
    final imagePicker = ImagePicker();
    final pickedImage=await imagePicker.pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton.icon(
          onPressed: _takePicture,
          icon: const Icon(Icons.camera),
          label: const Text('Take Picture'),
        ),
        const SizedBox(width: 6),
        TextButton.icon(
          onPressed: _fromGalleryImage,
          icon: const Icon(Icons.image),
          label: const Text('Choose from gallery'),
        ),
      ],
    );

    if (_selectedImage != null) {
      content = GestureDetector(
        onTap: _takePicture,
        child: Image.file(
          _selectedImage!,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
      ),
      alignment: Alignment.center,
      height: 250,
      width: double.infinity,
      child: content,
    );
  }
}
