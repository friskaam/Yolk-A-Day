import 'package:flutter/material.dart';
import 'package:yolk_a_day/component/navigation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Home Screen'),
      bottomNavigationBar: CustomNavigation(),
    );
  }
}
