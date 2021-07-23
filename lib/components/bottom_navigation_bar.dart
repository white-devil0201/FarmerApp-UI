import 'package:flutter/material.dart';

class BottomNavigtionBar extends StatefulWidget {
  @override
  _BottomNavigtionBarState createState() => _BottomNavigtionBarState();
}

int _currentIndex = 0;

class _BottomNavigtionBarState extends State<BottomNavigtionBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10.0, left: 16.0, right: 16.0, bottom: 10.0),
      child: Container(
        width: 363,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFF1F1F1).withOpacity(1.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFF7F5F5).withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 4,
              offset: Offset(-2, 0),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.0),
        ),
        padding: EdgeInsets.only(top: 2, right: 0, left: 0, bottom: 2),
        child: new ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: new BottomNavigationBar(
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.white,
            elevation: 2,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            items: [
              new BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/home.png')),
                label: "Home",
              ),
              new BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/buy.png')),
                label: "Buy/Sell",
              ),
              new BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/videos.png')),
                label: "Video",
              ),
              new BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/people.png')),
                label: "Profile",
              )
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
