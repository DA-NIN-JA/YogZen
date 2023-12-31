import 'package:flutter/material.dart';
import 'package:yogzen/components/nav_bar.dart';
import 'package:yogzen/screens/community/community_screen.dart';
import 'package:yogzen/screens/home/home.dart';
import 'package:yogzen/screens/specific_needs/specific_needs.dart';
import 'package:yogzen/screens/user_profile/user_page.dart';

class NavScreen extends StatefulWidget {
  static const routeName = "/tabScreen";
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final _pages = [
    HomeScreen(),
    SpecificNeeds(),
    CommunityScreen(),
    userPageScreen(),
  ];

  var _selected = 0;

  void _changeScreen(val) {
    setState(() {
      _selected = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(idx: _selected, change: _changeScreen),
      body: _pages[_selected],
    );
  }
}
