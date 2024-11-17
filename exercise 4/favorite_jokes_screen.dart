import 'package:flutter/material.dart';
import 'jokes.dart';

class FavoriteJokesScreen extends StatefulWidget {
  @override
  _FavoriteJokesScreenState createState() => _FavoriteJokesScreenState();
}

class _FavoriteJokesScreenState extends State<FavoriteJokesScreen> {
  int _favoritedJokeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Jokes'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: jokes.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          jokes[index].title,
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_favoritedJokeIndex == index) {
                              _favoritedJokeIndex = -1;
                              jokes[index].isFavorite = false;
                            } else {
                              _favoritedJokeIndex = index;
                              jokes.forEach((joke) => joke.isFavorite = false);
                              jokes[index].isFavorite = true;
                            }
                          });
                        },
                        child: Icon(
                          jokes[index].isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: jokes[index].isFavorite ? Colors.red : null,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4), // Space between title and description
                  Text(
                    jokes[index].description,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
