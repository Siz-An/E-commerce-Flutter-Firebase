import 'package:e_com/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:e_com/features/authentication/screens.onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_com/features/authentication/screens.onboarding/widgets/onboarding_next_button.dart';
import 'package:e_com/features/authentication/screens.onboarding/widgets/onboarding_page.dart';
import 'package:e_com/features/authentication/screens.onboarding/widgets/onboarding_skip.dart';
import 'package:e_com/utils/constants/image_strings.dart';
import 'package:e_com/utils/constants/sizes.dart';
import 'package:e_com/utils/constants/text_strings.dart';
import 'package:e_com/utils/device/device_utility.dart';
import 'package:e_com/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return  Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,),

              OnBoardingPage(
                image: TImages.onBoardingImage4,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,),

              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,),
            ],
          ),
          /// Skip Button
          const onBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          
          const OnBoardingDotNavigation(),

          /// circular Button

          const OnBoardingNextButton()

        ],
      ),
    );
  }
}









