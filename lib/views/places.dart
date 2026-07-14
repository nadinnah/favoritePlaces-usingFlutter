import 'package:favorite_places/main.dart';
import 'package:flutter/material.dart';
import 'new_place.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  void _addPlace(BuildContext context) {
    final newPlace = Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (ctx) => NewPlace()));
    if (newPlace == null) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: colorScheme.primaryContainer,
        title: const Text('Your Favorite Places'),
        actions: [
          IconButton(
            onPressed: () {
              _addPlace(context);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: const Center(child: Text('No Places added yet.')),
    );
  }
}
