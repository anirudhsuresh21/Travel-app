import 'package:flutter/material.dart';
import 'package:FindAWay/pages/homepage.dart';
import 'package:FindAWay/pages/settings.dart';


class BottomNavBarPage extends StatefulWidget {
  final int disabledIndex;

  const BottomNavBarPage({Key? key, required this.disabledIndex}) : super(key: key);

  @override
  _BottomNavBarPageState createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == widget.disabledIndex) {
            Navigator.of(context).pop(); // Remove the current page from the navigation stack
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
      ),
    );
  }

   _getPage(int index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        if (widget.disabledIndex == 1) {
          return Container(); // Return an empty container if disabled
        }
        return _buildPageWithAnimation(SettingsPage());
      case 2:
        if (widget.disabledIndex == 2) {
          return Container(); // Return an empty container if disabled
        }
        return _buildPageWithAnimation(const SettingsPage());
      case 3:
        if (widget.disabledIndex == 3) {
          return Container(); // Return an empty container if disabled
        }
        return _buildPageWithAnimation(SettingsPage());
      default:
        return Container(); // Return an empty container for unknown index
    }
  }

  PageRouteBuilder _buildPageWithAnimation(Widget page) {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) {
        return FadeTransition(
          opacity: animation,
          child: page,
        );
      },
    );
  }
}
