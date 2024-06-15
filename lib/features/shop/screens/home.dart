import 'package:e_com/common/widgets/appbar/appbar.dart';
import 'package:e_com/common/widgets/custom_shapes/circular_container.dart';
import 'package:e_com/features/shop/screens/widget/home_appbar.dart';
import 'package:e_com/features/shop/screens/widget/home_category.dart';
import 'package:e_com/features/shop/screens/widget/promo_slider.dart';
import 'package:e_com/utils/constants/sizes.dart';
import 'package:e_com/utils/device/device_utility.dart';
import 'package:e_com/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import '../../../common/widgets/custom_shapes/primary_header_container.dart';
import '../../../common/widgets/custom_shapes/search_container.dart';
import '../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../common/widgets/images/t_rounded_images.dart';
import '../../../common/widgets/layouts/grid_layout.dart';
import '../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../common/widgets/products/product_card/product_card_vertical.dart';
import '../../../common/widgets/texts/section_heading.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ---> Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// ---> Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// ---> searchBar
                  TSearchContainer(text: 'Search in store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// ---> categories <-----
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Heading
                        TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white,),
                        SizedBox(height: TSizes.spaceBtwItems),
                        /// Categories
                        THomeCategory()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /// ----> Body Part
            Padding(
              padding:  EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlide(banner: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3,TImages.promoBanner4]),
                  const SizedBox(height: TSizes.spaceBtwSections - 15),
                  /// ----> Popular Products
                  TGridLayout(itemCount: 6, itemBuilder: (_, index) => const TProductCardVertical()),

                ],
              )
            )
          ],
        ),
      ),
    );
  }
}








