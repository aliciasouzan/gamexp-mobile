import 'package:flutter/material.dart';
import 'package:game_xp/mock/mock_data.dart';
import 'package:game_xp/shared/widgets/game_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Lançamento',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
                const Divider(color: Colors.white),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: GameWidget(game: MockData.launchGame),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Jogos Populares',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
                const Divider(color: Colors.white),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: MockData.popularGames
                    .map((e) => GameWidget(
                          game: e,
                          height: 300,
                          width: 200,
                        ))
                    .map((e) => Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: e,
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
