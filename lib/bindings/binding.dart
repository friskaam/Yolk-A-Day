import 'package:get/get.dart';
import 'package:yolk_a_day/data/repositories/auth/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}