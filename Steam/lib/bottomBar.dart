import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:steam/Alert.dart';
import 'package:steam/Guard.dart';
import 'package:steam/Menu.dart';
import 'package:steam/News.dart';
import 'package:steam/main.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  final Widget _mySteam = Steam();
  final Widget _myNews = News();
  final Widget _myGuard = Guard();
  final Widget _myAlert = Alert();
  final Widget _myMenu = Menu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: this.getBody(),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Color.fromRGBO(32,33,38,1),
        items: <Widget>[
          Icon(Icons.shop,color: Colors.white,),
          Icon(CupertinoIcons.news_solid,color: Colors.white,),
          Icon(Icons.safety_check,color: Colors.white,),
          Icon(CupertinoIcons.bell,color: Colors.white,),
          Icon(CupertinoIcons.line_horizontal_3,color: Colors.white,),
        ],
        onTap: (int index) {
          this.onTapHandler(index);
        },
      ),
    );
  }
  Widget getBody( )  {
    if(this.selectedIndex == 0) {
      return this._mySteam;
    } else if(this.selectedIndex==1) {
      return this._myNews;
    } else if(this.selectedIndex==2) {
      return this._myGuard;
    } else if(this.selectedIndex==3) {
      return this._myAlert;
    } else if(this.selectedIndex==4) {
      return this._myMenu;
    } else {
      return this._myMenu;
    }
  }
  void onTapHandler(int index)  {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}
