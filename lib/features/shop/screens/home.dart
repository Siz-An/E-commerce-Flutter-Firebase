
import 'package:e_com/common/widgets/appbar/appbar.dart';
import 'package:e_com/features/shop/screens/widget/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../common/widgets/custom_shapes/primary_header_container.dart';
import '../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ---> Header
             TPrimaryHeaderContainer(
               child: Column(
                 children: [
                   /// ---> Appbar
                   THomeAppBar(),
                   /// ---> searchBar

                   /// ---> categories
                 ],
               )
             )
          ],
        ),
      ),
    );
  }
}










