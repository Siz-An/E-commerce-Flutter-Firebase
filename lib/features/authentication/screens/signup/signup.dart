import 'package:e_com/common/widgets.login_signup/form_divider.dart';
import 'package:e_com/common/widgets.login_signup/social_buttons.dart';
import 'package:e_com/features/authentication/screens/signup/upWidget/signup_form.dart';
import 'package:e_com/utils/constants/colors.dart';
import 'package:e_com/utils/constants/text_strings.dart';
import 'package:e_com/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              TSignupform(),
              /// -- Divider
              const SizedBox(height: TSizes.spaceBtwSections),
              const TFormDivider(dividerText: TTexts.orSignUpWith,),

              /// -- Social Buttons
              const SizedBox(height: TSizes.spaceBtwSections),
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}


