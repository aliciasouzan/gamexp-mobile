import 'package:flutter/material.dart';
import 'package:game_xp/shared/model/game.dart';

class GameWidget extends StatelessWidget {
  final Game game;
  final double height;
  final double? width;

  const GameWidget({
    super.key,
    required this.game,
    this.height = 220,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: height,
      width: width,
      constraints: width == null ? BoxConstraints.expand(height: height) : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Image.network(
            game.imageUrl,
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),
          Container(
            height: 30,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                stops: [0.2, 1.0],
                colors: [Color(0xFF81529E), Color(0xFF9D6BBC)],
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(game.name, maxLines: 1, overflow: TextOverflow.ellipsis,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
