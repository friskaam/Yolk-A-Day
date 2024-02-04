import 'package:flutter/material.dart';
import 'package:yolk_a_day/screen/login.dart';
import 'package:yolk_a_day/screen/register.dart';
import 'package:yolk_a_day/screen/welcome.dart';

// Future<void> main() async{
//   // TODO: widgets binding
//   // final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

//   // TODO: add GetX local storage
//   // await GetStorage.init();

//   //TODO: await native splash
//   // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

//   // TODO: initialize firebase & authentication
//   // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
//   //     .then((FirebaseApp value) => Get.put(AuthenticationRepository())
//   // );

//   runApp(MaterialApp(
//     title: 'Yolk A Day',
//     initialRoute: '/',
//     routes: {
//       '/': (context) => const Welcome(),
//       '/register': (context) => const Register()
//     },
//   ));
// }

void main() {
  // TODO: make run app works on async main function
  runApp(MaterialApp(
    title: 'Yolk A Day',
    initialRoute: '/',
    routes: {
      '/': (context) => const Welcome(),
      '/register': (context) => const Register(),
      '/login': (context) => const Login()
    },
  ));
}
