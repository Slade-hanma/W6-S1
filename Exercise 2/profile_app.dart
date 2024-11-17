import 'package:flutter/material.dart';
import 'profile_data.dart';

class ProfileApp extends StatelessWidget {
  final ProfileData profileData;

  ProfileApp({required this.profileData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CADT Student Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (profileData.avatarUrl != null)
                    CircleAvatar(
                      backgroundImage: NetworkImage(profileData.avatarUrl!),
                    ),
                  SizedBox(width: 16.0),
                  Text(
                    profileData.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(profileData.position),
              SizedBox(height: 16.0),
              Divider(),
              SizedBox(height: 16.0),
              for (final tile in profileData.tiles)
                Card(
                  child: ListTile(
                    leading: Icon(tile.icon),
                    title: Text(tile.title),
                    subtitle: Text(tile.data),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
