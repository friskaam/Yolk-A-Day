import 'package:flutter/material.dart';
import 'package:yolk_a_day/component/navigation_menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Home Screen'),
    );
  }
}
