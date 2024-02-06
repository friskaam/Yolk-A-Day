import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/authentication/screen/home.dart';
import 'package:yolk_a_day/component/navigation_menu.dart';

//import 'authentication/screen/welcome.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: NavigationMenu(),
    );
  }
}
