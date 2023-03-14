import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ionicons/ionicons.dart';

class GitHubScreen extends StatefulWidget {

  @override
  State<GitHubScreen> createState() => _GitHubState();
}

class _GitHubState extends State<GitHubScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        selectedItemColor: HexColor(
          '#e3c099',
        ),
        unselectedItemColor: Colors.white,
        backgroundColor: HexColor(
          '#045255',
        ),
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            currentIndex = index;
            print(index);
          });
        },
        items:
        [
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.albums,
              size: 35.0,
            ),
            label: 'Recommended',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.archive,
              size: 35.0,
            ),
            label: 'Will Read',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.heart,
              size: 35.0,
            ),
            label: 'Liked',
          ),
        ],
      ),
    );
  }
}
