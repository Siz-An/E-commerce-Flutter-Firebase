
import 'package:e_com/common/widgets/images/t_rounded_images.dart';
import 'package:e_com/utils/constants/colors.dart';
import 'package:e_com/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/rounded_container.dart';
import '../../icons/t_circular_icon.dart';
import '../../product_prices/product_price_text.dart';
import '../../texts/product_title_text.dart';
class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding:  EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
          child:  Column(
            /// -----> Thumbnail, Wishlist Button, Discount Tag
              children: [
                TRoundedContainer(
                  height: 150,
                  padding: const EdgeInsets.all(TSizes.sm),
                  backgroundColor: dark ? TColors.dark : TColors.light,
                  child:  Stack(
                    children: [
                      ///-----> Thumbnail Image
                        const TRoundedImage(imageUrl: TImages.productImageLap1, applyImageRadius: false),

                      ///-----> Sale Tag
                      Positioned(
                        top: 0,
                        child: TRoundedContainer(
                          radius: TSizes.sm,
                          backgroundColor: TColors.secondary.withOpacity(0.8),
                          padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                          child: Text('20%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                        ),
                      ),

                      ///---> Favourite Icon Button
                      const Positioned(
                        top: 0,
                          right: 0,
                          child: Icon(Iconsax.heart5, color: Colors.red,))
                    ],
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwItems / 2),

                /// ----> Detains
                 Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TProductTitleText(title: 'Gaming Laptop', smallSize: true,),
                     SizedBox(height: TSizes.spaceBtwItems / 2),
                    Row(
                      children: [
                        Text('Keychron Q5', overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium,),
                        const SizedBox(width: TSizes.xs),
                        const Icon(Iconsax.verify5, color: TColors.primaryColor, size: TSizes.iconXs)
                      ],
                    )

                  ],
                ),
                ),
          Spacer(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// ----> Price
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: TProductPriceText(price: '150000'),
          ),
          Container(
            decoration: const BoxDecoration(
                color: TColors.dark,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(TSizes.cardRadiusMd),
                  bottomRight: Radius.circular(TSizes.productImageRadius),
                )
            ),
            child: const SizedBox(
                width: TSizes.iconLg ,
                height: TSizes.iconLg ,
                child: Center(
                    child: Icon(Iconsax.add, color: TColors.white))),
          )
        ],
      )
              ],

          ),
      ),
    );
  }
}


