import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yolk_a_day/user_profile/screen/user_profile.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.home), label: 'Challenge'),
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Statistic'),
            NavigationDestination(icon: Icon(Iconsax.user1), label: 'Social'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(color: Colors.red), // replace the container with home screen
    Container(
        color: Colors.blue), // replace the container with challenge screen
    Container(
        color: Colors.green), // replace the container with statistics screen
    Container(color: Colors.yellow), // replace the container with social screen
    const UserProfile(), // replace the container with profile screen
  ];
}
