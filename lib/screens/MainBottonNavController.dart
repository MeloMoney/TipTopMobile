import 'package:flutter/material.dart';
import 'package:melodyapp/screens/feed/FeedPage.dart';
import 'package:melodyapp/screens/profile/ProfilePage.dart';

class HomeBottomNavigationController extends StatefulWidget {
  @override
  _HomeBottomNavigationControllerState createState() =>
      _HomeBottomNavigationControllerState();
}

class _HomeBottomNavigationControllerState extends State<HomeBottomNavigationController> {
  final List<Widget> pages = [

    FeedPage(),
    ProfilePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  int _selectedIndex = 0;

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
    onTap: (int index) {
      setState(() => _selectedIndex = index);
    },
    currentIndex: selectedIndex,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.blueAccent,
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    ),

    unselectedItemColor: Colors.grey,
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
    ),
    showUnselectedLabels: true,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Feed')
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.email),
          title: Text('Profile')
      ),
    ],
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        bucket: bucket,
        child: pages[_selectedIndex],
      ),
    );
  }
}
