import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/authentication/screen/welcome.dart';
import 'package:yolk_a_day/data/repositories/auth/auth_repository.dart';
import 'package:yolk_a_day/data/repositories/auth/network_manager.dart';
import 'package:yolk_a_day/data/repositories/user_repository.dart';
import 'package:yolk_a_day/loader/custom_loader.dart';
import 'package:yolk_a_day/authentication/models/user_model.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();

  // variables and controllers for its input
  final hidePassword = true.obs;
  final hideConfirmPassword = true.obs;
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>(); // form key for form validation

  void register() async {
    try {
      // check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) return;

      // form validation
      if(!registerFormKey.currentState!.validate()) return;

      // register user in firebase
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      // save the user data in firebase firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        username: username.text.trim(),
        email: email.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      Loaders.dismissLoading();
      Loaders.successSnackBar(title: 'Congratulations', message: 'Your account has been created'!);

      Get.to(() => const Welcome());

    } catch (e) {
      Loaders.dismissLoading();
      Loaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }
}