

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.IconColor,
    required this.onPressed,
  });
  final Color IconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_bag, color: Colors.white,)),

        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: TColors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(100)
            ),
            child: Center(
                child: Text('0', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 0.8))),
          ),
        )
      ],
    );
  }
}