import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:yolk_a_day/authentication/screen/login.dart';
import 'package:yolk_a_day/authentication/screen/welcome.dart';
import 'package:yolk_a_day/navigation_menu.dart';

import '../user_repository.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    final user = _auth.currentUser;

    if (user != null) {
      // if login
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => const Welcome());
      }
    }

    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const Login())
        : Get.offAll(const Welcome());
  }

  // email & username-auth login
  Future<UserCredential> loginWithEmailOrUsernameAndPassword(
      String emailOrUsername, String password) async {
    try {
      UserCredential userCredential;

      if (emailOrUsername.contains('@')) {
        userCredential = await _auth.signInWithEmailAndPassword(
            email: emailOrUsername, password: password);
      } else {
        final user =
            await UserRepository.instance.getUserByUsername(emailOrUsername);
        print(user);
        if (user != null) {
          userCredential = await _auth.signInWithEmailAndPassword(
            email: user.email,
            password: password,
          );
        } else {
          throw FirebaseAuthException(
            code: 'user-not-found',
            message: 'Account not found. Please try again.',
          );
        }
      }

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code, message: e.message);
    } on FirebaseException catch (e) {
      throw FirebaseException(
          code: e.code, message: e.message, plugin: e.plugin);
    } on FormatException {
      throw const FormatException('Invalid email or password format.');
    } on PlatformException catch (e) {
      throw PlatformException(code: e.code, message: e.message);
    } catch (e) {
      throw 'Something went wrong, please try again.';
    }
  }

  // email-auth register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(
          code: e.code,
          message: e.message ?? 'An error occurred during registration.');
    } on FirebaseException catch (e) {
      throw FirebaseException(
          code: e.code, message: e.message, plugin: e.plugin);
    } on FormatException {
      throw const FormatException('Invalid email or password format.');
    } on PlatformException catch (e) {
      throw PlatformException(code: e.code, message: e.message);
    } catch (e) {
      throw 'Something went wrong, please try again.';
    }
  }

  // email-auth verify
  Future<void> sendEmailVerification(String email, String password) async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(
          code: e.code,
          message: e.message ?? 'An error occurred during registration.');
    } on FirebaseException catch (e) {
      throw FirebaseException(
          plugin: e.plugin,
          message: e.message ?? 'An error occurred during registration.');
    } on FormatException {
      throw const FormatException('Invalid email or password format.');
    } on PlatformException catch (e) {
      throw PlatformException(
          code: e.code,
          message: e.message ?? 'An error occurred during registration.');
    } catch (e) {
      throw 'Something went wrong, please try again.';
    }
  }

  // email-auth re-auth

  // email-auth forget password
}
