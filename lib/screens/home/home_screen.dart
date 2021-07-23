import 'package:farmer1/components/bottom_navigation_bar.dart';
import 'package:farmer1/models/main_drawer.dart';
import 'package:farmer1/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKEy = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKEy,
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(
            top: 7,
            left: 12,
            bottom: 5,
          ),
          decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFF1F1F1).withOpacity(1.0),
              ),
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFF7F5F5).withOpacity(0.5),
                  blurRadius: 3,
                  offset: Offset(0, 1),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0)),
          child: IconButton(
            icon: Image.asset('assets/icons/menu.png'),
            onPressed: () {},
          ),
        ),
        centerTitle: true,
        title: Text(
          'App Name',
          style: TextStyle(
            fontSize: 25,
            color: Colors.green,
            fontWeight: FontWeight.w400,
            fontFamily: 'Open Sas',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/icons/weather.png'),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/icons/alert.png'),
            onPressed: () {},
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Body(),
      bottomNavigationBar: BottomNavigtionBar(),
    );
  }
}
