import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:yolk_a_day/authentication/screen/login.dart';
import 'package:yolk_a_day/authentication/screen/welcome.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    screenRedirect();
  }

  screenRedirect() async {
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true ? Get.offAll(() => const Login()) : Get.offAll(const Welcome());
  }

  // email-auth login


  // email-auth register


  // email-auth verify


  // email-auth re-auth


  // email-auth forget password


  //google-auth


  // logout


  // delete user

}
