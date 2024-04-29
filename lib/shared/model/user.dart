import 'package:game_xp/shared/model/game.dart';

class User {
  final String name;
  final String imageUrl;
  final String username;
  final int following;
  final int followers;
  final Map<Game, double> scores;

  final Map<Game, String> reviews;

  User({
    required this.name,
    required this.imageUrl,
    required this.username,
    required this.following,
    required this.followers,
    required this.scores,
    required this.reviews,
  });

  int get reviewsGiven => reviews.length;

  int get scoresGiven => scores.length;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;
}
