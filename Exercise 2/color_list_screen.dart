import 'package:flutter/material.dart';
import 'profile_app.dart';
import 'profile_data.dart';

class ColorListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profileData = ProfileData(
      name: 'Panharong',
      position: 'Flutter Developer',
      avatarUrl: 'https://example.com/avatar.jpg',
      tiles: [
        TileData(
          icon: Icons.phone,
          title: 'Phone Number',
          data: '+123 456 7890',
        ),
        TileData(
          icon: Icons.location_on,
          title: 'Address',
          data: 'Somewhere, Earth',
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Color List'),
      ),
      body: ProfileApp(profileData: profileData),
    );
  }
}
