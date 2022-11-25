import 'dart:ui';

import 'package:flight_booking/screens/HomeScreen.dart';
import 'package:flight_booking/screens/Profile_screen.dart';
import 'package:flight_booking/screens/Tiket_Screen.dart';
import 'package:flight_booking/screens/bookHotels.dart';
import 'package:flight_booking/screens/search_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int _selected_index = 0;
  static final List<Widget> _widgetOptions = <Widget>[
     HomeScreen(),
    const searchscreen(),
    const tiketscreen(),
    const ProfileScreen()
     
  ];
  void _onTimeTaped(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selected_index],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selected_index,
          onTap: _onTimeTaped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xff526480),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "tikit"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_add_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_add_filled),
                label: "profile")
          ]),
    );
  }
}
