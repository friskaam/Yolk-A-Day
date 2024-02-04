import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/data/repositories/auth/network_manager.dart';
import 'package:yolk_a_day/loader/custom_loader.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();

  // variables and controllers for its input
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>(); // form key for form validation

  Future<void> register() async {
    try {
      // loader (start loading)
      Loaders.showLoading();

      // check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) return;

      // form validation
      if(!registerFormKey.currentState!.validate()) return;

      // final isConnected = await NetworkManager.instance.isConnected();
    } catch (e) {
      Loaders.errorSnackBar(title: 'Error', message: e.toString());
    } finally {
      Loaders.dismissLoading();
    }
  }
}