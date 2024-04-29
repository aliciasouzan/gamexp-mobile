import 'package:flutter/material.dart';
import 'package:game_xp/home/view/home_view.dart';
import 'package:game_xp/home/view/profile_view.dart';
import 'package:game_xp/mock/mock_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  static const double hGap = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: pageIndex == 0
          ? AppBar(
              backgroundColor: Colors.transparent,
              title: TextField(
                decoration: InputDecoration(suffixIcon: Icon(Icons.search)),
              ),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (indexTapped) {
          setState(() {
            pageIndex = indexTapped;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Library',
            icon: Icon(Icons.library_books),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: IndexedStack(
        index: pageIndex,
        children: [
          const HomeView(),
          Container(
            color: Colors.pink,
          ),
          ProfileView(
            user: MockData.appUser,
          ),
        ],
      ),
    );
  }
}
