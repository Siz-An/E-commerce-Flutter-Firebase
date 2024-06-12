


import 'package:e_com/utils/constants/image_strings.dart';
import 'package:e_com/utils/constants/sizes.dart';
import 'package:e_com/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Image
            Image(image: AssetImage(TImages.deliveredInPlaneIllustration), width: THelperFunction.screenWidth() * 0.6,),
            const SizedBox(height: TSizes.spaceBtwItems,),

            /// Title & SubTitle
            Text(TTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text('Support@inovatech.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwSections,),

            /// Buttons
            SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.done),)),
            const SizedBox(height: TSizes.spaceBtwItems,),

            SizedBox(width: double.infinity,
                child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail),)),
            const SizedBox(height: TSizes.spaceBtwItems,),




          ],
        ),
        ),

      ),
    );
  }
}
