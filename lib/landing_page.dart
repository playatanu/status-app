import 'package:flutter/material.dart';
import 'views/home/home_page.dart';
import 'views/post/post_page.dart';
import 'views/profile/profile_page.dart';

// class MyNavigationBar extends StatefulWidget {
//   const MyNavigationBar({Key? key}) : super(key: key);

//   @override
//   _MyNavigationBarState createState() => _MyNavigationBarState();
// }

// class _MyNavigationBarState extends State<MyNavigationBar> {
//   int _selectedIndex = 0;
//   static List<Widget> _widgetOptions = <Widget>[
//     HomePage(),
//     HomePage(),
//     PostPage(),
//     HomePage(),
//     ProfilePage(),
//   ];

//   final TextStyle unselectedLabelStyle = TextStyle(
//       color: Colors.white.withOpacity(0.5),
//       fontWeight: FontWeight.w500,
//       fontSize: 12);

//   final TextStyle selectedLabelStyle = const TextStyle(
//       color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         // showUnselectedLabels: true,
//         // showSelectedLabels: true,
//         // backgroundColor: Colors.black,
//         // unselectedItemColor: Colors.white.withOpacity(0.8),
//         // selectedItemColor: Colors.red,
//         // unselectedLabelStyle: unselectedLabelStyle,
//         // selectedLabelStyle: selectedLabelStyle,
//         items: [
//
//         ],
//       ),
//     );
//   }
// }

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text('Search'),
    InitPost(),
    Text('New'),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.white.withOpacity(0.8),
            selectedItemColor: Colors.red,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
                label: 'Home',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.search,
                    size: 20.0,
                  ),
                ),
                label: 'Search',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.post_add,
                    size: 20.0,
                  ),
                ),
                label: 'Add',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.location_history,
                    size: 20.0,
                  ),
                ),
                label: 'Love',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.location_history,
                    size: 20.0,
                  ),
                ),
                label: 'Profile',
                backgroundColor: Colors.black,
              ),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            iconSize: 20,
            onTap: _onItemTapped,
            elevation: 5),
      ),
    );
  }
}
