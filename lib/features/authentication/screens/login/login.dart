import 'package:e_com/common/styles/spacing_styles.dart';
import 'package:e_com/features/authentication/screens/login/widget/login_form.dart';
import 'package:e_com/features/authentication/screens/login/widget/login_header.dart';
import 'package:e_com/utils/constants/colors.dart';
import 'package:e_com/utils/constants/sizes.dart';
import 'package:e_com/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets.login_signup/form_divider.dart';
import '../../../../common/widgets.login_signup/social_buttons.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// -- Logo, Title & Sub-Title
              TLoginHeader(dark: dark),

              /// Form
              const TLoginForm(),

              /// -- Divider
              TFormDivider(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections,),
              /// -- Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}








