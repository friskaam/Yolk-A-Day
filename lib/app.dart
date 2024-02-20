import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'authentication/screen/welcome.dart';
import 'bindings/binding.dart';

class App extends StatelessWidget {
  const App({super.key,});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: GeneralBindings(),
      home: const Welcome(),
    );
  }
}