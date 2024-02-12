import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/component/navigation_menu.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Outfit',
      ),
      home: NavigationMenu(),
    );
  }
}
