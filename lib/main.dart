import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'data/repositories/auth/auth_repository.dart';
import 'firebase_options.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'app.dart';

Future<void> main() async {

  // TODO: widgets binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // TODO: add GetX local storage
  await GetStorage.init();

  //TODO: await native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // TODO: initialize firebase & authentication
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository())
  );

  runApp(const App());
}