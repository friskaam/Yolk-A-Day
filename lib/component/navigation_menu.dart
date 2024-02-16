import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/authentication/screen/challange.dart';
import 'package:yolk_a_day/authentication/screen/home.dart';
import 'package:yolk_a_day/authentication/screen/statistic/statistic.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(100)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(221, 221, 221, 1),
                  blurRadius: 20,
                  offset: Offset(-2, -2))
            ]),
        child: Obx(() => NavigationBarTheme(
              data: NavigationBarThemeData(
                  labelTextStyle: MaterialStatePropertyAll(TextStyle(
                fontFamily: 'Outfit',
                fontSize: 12,
              ))),
              child: NavigationBar(
                indicatorColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index) =>
                    controller.selectedIndex.value = index,
                destinations: [
                  NavigationDestination(
                    selectedIcon: SvgPicture.asset(
                      'assets/navigation-icons/home-active.svg',
                      height: 40,
                      width: 40,
                    ),
                    icon: SvgPicture.asset(
                      'assets/navigation-icons/home.svg',
                      height: 40,
                      width: 40,
                    ),
                    label: 'Home',
                  ),
                  NavigationDestination(
                    selectedIcon: SvgPicture.asset(
                      'assets/navigation-icons/challenge-active.svg',
                      height: 40,
                      width: 40,
                    ),
                    icon: SvgPicture.asset(
                      'assets/navigation-icons/challenge.svg',
                      height: 40,
                      width: 40,
                    ),
                    label: 'Challange',
                  ),
                  NavigationDestination(
                    selectedIcon: SvgPicture.asset(
                      'assets/navigation-icons/statistic-active.svg',
                      height: 40,
                      width: 40,
                    ),
                    icon: SvgPicture.asset(
                      'assets/navigation-icons/statistic.svg',
                      height: 40,
                      width: 40,
                    ),
                    label: 'Statistic',
                  ),
                  NavigationDestination(
                    selectedIcon: SvgPicture.asset(
                      'assets/navigation-icons/social-active.svg',
                      height: 40,
                      width: 40,
                    ),
                    icon: SvgPicture.asset(
                      'assets/navigation-icons/social.svg',
                      height: 40,
                      width: 40,
                    ),
                    label: 'Social',
                  ),
                  NavigationDestination(
                    selectedIcon: SvgPicture.asset(
                      'assets/navigation-icons/profile-active.svg',
                      height: 40,
                      width: 40,
                    ),
                    icon: SvgPicture.asset(
                      'assets/navigation-icons/profile.svg',
                      height: 40,
                      width: 40,
                    ),
                    label: 'Profile',
                  ),
                ],
              ),
            )),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Home(), // replace the container with home screen
    Challange(), // replace the container with challenge screen
    Statistic(), // replace the container with statistics screen
    Container(color: Colors.yellow), // replace the container with social screen
    Container(
        color: Colors.orange), // replace the container with profile screen
  ];
}
