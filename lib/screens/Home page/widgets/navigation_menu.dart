import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_tranpotation_app/screens/Activity%20page/activity_screen.dart';
import 'package:good_tranpotation_app/screens/Home%20page/home_screen.dart';
import 'package:good_tranpotation_app/screens/Notifications%20Page/notification.dart';
import 'package:good_tranpotation_app/screens/Profile%20page/profileScreen.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
            height: 60,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
              NavigationDestination(
                  icon: Icon(Iconsax.activity4), label: "Activity"),
              NavigationDestination(
                  icon: Icon(Iconsax.notification), label: "Notifications"),
              NavigationDestination(
                  icon: Icon(Iconsax.profile_2user), label: "Profile"),
            ],
          )),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const ActivityScreen(),
    const NotificationsScreen(),
    const ProfileScreen()
  ];
}
