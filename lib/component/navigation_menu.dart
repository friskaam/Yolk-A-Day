import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/authentication/screen/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          child: NavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: [
              NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'assets/navigation-icons/home-active.svg',
                  height: 50,
                  width: 50,
                ),
                icon: SvgPicture.asset(
                  'assets/navigation-icons/home.svg',
                  height: 50,
                  width: 50,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'assets/navigation-icons/challange-active.svg',
                  height: 50,
                  width: 50,
                ),
                icon: SvgPicture.asset(
                  'assets/navigation-icons/challange.svg',
                  height: 50,
                  width: 50,
                ),
                label: 'Challange',
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'assets/navigation-icons/statistic-active.svg',
                  height: 50,
                  width: 50,
                ),
                icon: SvgPicture.asset(
                  'assets/navigation-icons/statistic.svg',
                  height: 50,
                  width: 50,
                ),
                label: 'Statistic',
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'assets/navigation-icons/social-active.svg',
                  height: 50,
                  width: 50,
                ),
                icon: SvgPicture.asset(
                  'assets/navigation-icons/social.svg',
                  height: 50,
                  width: 50,
                ),
                label: 'Social',
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'assets/navigation-icons/profile-active.svg',
                  height: 50,
                  width: 50,
                ),
                icon: SvgPicture.asset(
                  'assets/navigation-icons/profile.svg',
                  height: 50,
                  width: 50,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Home(), // replace the container with home screen
    Container(
        color: Colors.blue), // replace the container with challenge screen
    Container(
        color: Colors.green), // replace the container with statistics screen
    Container(color: Colors.yellow), // replace the container with social screen
    Container(
        color: Colors.orange), // replace the container with profile screen
  ];
}
