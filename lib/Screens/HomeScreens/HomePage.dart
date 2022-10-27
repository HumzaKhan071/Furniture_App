import 'package:flutter/material.dart';
import 'package:furniture_app/Screens/FavoriteScreens/FavoriteScreen.dart';
import 'package:furniture_app/Screens/HomeScreens/HomeScreen.dart';
import 'package:furniture_app/Screens/ProductScreens/ProductScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;
  int pageIndex = 0;

  final pages = [const HomeScreen(), FavoriteScreen(), Scaffold(), Scaffold()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: pageIndex,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          selectedIconTheme: IconThemeData(color: Colors.black),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey,
          ),
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.home_outlined),
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.bookmark_border_outlined),
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.add_alert_outlined),
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.person_2_outlined),
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                ),
                label: ""),
          ]),

      body: pages[pageIndex],
      //
    );
  }
}
