import 'package:e_com/features/shop/screens/home/home.dart';
import 'package:e_com/utils/constants/colors.dart';
import 'package:e_com/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../features/shop/screens/store/store.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(() => CurvedNavigationBar(
        index: controller.selectedIndex.value,
        height: 70.0,
        items: <Widget>[
          Icon(Iconsax.home, size: 30,color: Colors.green,),
          Icon(Iconsax.shop, size: 30,color: Colors.green,),
          Icon(Iconsax.heart, size: 30,color: Colors.green),
          Icon(Iconsax.user, size: 30,color: Colors.green),
        ],
        color: darkMode ? TColors.dark : Colors.white,
        buttonBackgroundColor: darkMode ? TColors.white : TColors.dark,
        backgroundColor: Colors.grey,
        animationCurve: Curves.decelerate,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          controller.selectedIndex.value = index;
        },
        letIndexChange: (index) => true,
      )),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    Container(color: Colors.black),
    Container(color: Colors.black)
  ];
}
