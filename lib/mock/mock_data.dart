import 'package:game_xp/shared/model/game.dart';
import 'package:game_xp/shared/model/platform.dart';
import 'package:game_xp/shared/model/user.dart';

class MockData {
  static User get appUser => User(
        name: 'Fiona',
        imageUrl:
            'https://supermariobroswonder.nintendo.com/_images/globals/wonder-flower/wonder-flower-2x.webp',
        username: '@FionaTime',
        following: 0,
        followers: 0,
        scores: {_animalCrossing: 5.0},
        reviews: {
          _animalCrossing:
              'Muito bom, minha parte favorita é colecionar insetos!',
        },
      );

  static Game get launchGame => _marioWonder;

  static List<Game> get popularGames => [_animalCrossing, _spiderMan, _portal2];

  static List<Game> get favoriteGames => [_animalCrossing, _kirby];
}

final _marioWonder = Game(
  name: 'Super Mario Bros Wonder',
  imageUrl: 'https://supermariobroswonder.nintendo.com/images/share-fb.jpg',
  description: '',
  publisher: 'Nintendo',
  platform: [Platform.nintendoSwitch],
  launchYear: '2024',
  score: 5.0,
);

final _animalCrossing = Game(
  name: 'Animal Crossing New Horizons',
  imageUrl:
      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTZKpAnJJlsFA9Y3rYF3OYY4EmAtB32HkknkvCSx3a43Onnx-xebo_fTKJBf5VbC6gTjzdrFQ',
  description: '',
  publisher: 'Nintendo',
  platform: [Platform.nintendoSwitch],
  launchYear: '2022',
  score: 4.3,
);

final _kirby = Game(
  name: 'Kirby and the Forgotten Land',
  imageUrl:
      'https://upload.wikimedia.org/wikipedia/en/e/e7/Kirby_and_The_Forgotten_Land_Icon.jpg',
  description: '',
  publisher: 'Nintendo',
  platform: [Platform.nintendoSwitch],
  launchYear: '2023',
  score: 4.12,
);

final _spiderMan = Game(
  name: 'SpiderMan Remastered',
  imageUrl:
      'https://image.api.playstation.com/vulcan/ap/rnd/202009/3021/BtsjAgHT9pqHRXtN9FCk7xc8.png',
  description: '',
  publisher: 'Sony',
  platform: [Platform.playstation5],
  launchYear: '2022',
  score: 4.0,
);

final _streetFighter = Game(
  name: 'Street Fighter V',
  imageUrl: '',
  description: '',
  publisher: 'CAPCOM',
  platform: [Platform.playstation5],
  launchYear: '2021',
  score: 4.2,
);

final _legendOfMana = Game(
  name: 'Legend of Mana',
  imageUrl: '',
  description: '',
  publisher: 'Nintendo',
  platform: [Platform.nintendoSwitch],
  launchYear: '2024',
  score: 4.52,
);

final _portal2 = Game(
  name: 'Portal 02',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/pt/f/f9/Portal2cover.jpg',
  description: '',
  publisher: 'Valve',
  platform: [Platform.pc, Platform.nintendoSwitch],
  launchYear: '2016',
  score: 5.0,
);
