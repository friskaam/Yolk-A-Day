import 'package:flutter/material.dart';

import 'app.dart';

Future<void> main() async {

  // TODO: widgets binding
  // final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // TODO: add GetX local storage
  // await GetStorage.init();

  //TODO: await native splash
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // TODO: initialize firebase & authentication
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
  //     .then((FirebaseApp value) => Get.put(AuthenticationRepository())
  // );

  runApp(const App());
}