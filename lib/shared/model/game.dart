import 'package:game_xp/shared/model/platform.dart';

class Game {
  final String name;

  final String imageUrl;
  final String description;
  final String publisher;
  final List<Platform> platform;
  final String launchYear;
  final double score;

  Game({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.publisher,
    required this.platform,
    required this.launchYear,
    required this.score,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Game && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;
}
