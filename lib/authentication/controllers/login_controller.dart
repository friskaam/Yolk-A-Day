import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:yolk_a_day/navigation_menu.dart';

import '../../data/repositories/auth/auth_repository.dart';
import '../../data/repositories/auth/network_manager.dart';
import '../../loader/custom_loader.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final localStorage = GetStorage();
  final hidePassword = true.obs;
  final TextEditingController emailUsername = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  void login() async {
    try {
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      if (!loginFormKey.currentState!.validate()) return;

      await AuthenticationRepository.instance
          .loginWithEmailOrUsernameAndPassword(
        emailUsername.text.trim(),
        password.text.trim(),
      );

      Get.to(() => const NavigationMenu());
    } catch (e) {
      Loaders.dismissLoading();
      Loaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }
}
