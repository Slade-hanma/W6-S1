// jokes.dart
class Joke {
  String title;
  String description;
  bool isFavorite;

  Joke({
    required this.title,
    required this.description,
    this.isFavorite = false,
  });
}

List<Joke> jokes = [
  Joke(
    title: "Why don't scientists trust atoms?",
    description: "Because they make up everything!",
  ),
  Joke(
    title: "Why did the scarecrow win an award?",
    description: "Because he was outstanding in his field!",
  ),
  Joke(
    title: "What do you call fake spaghetti?",
    description: "An impasta!",
  ),
  Joke(
    title: "Why did the bicycle fall over?",
    description: "Because it was two-tired!",
  ),
  Joke(
    title: "What do you call cheese that isn't yours?",
    description: "Nacho cheese!",
  ),
];
