

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../signup/signup.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              /// Email
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email,
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),

              /// Password
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields / 2),

              /// Remember Me & Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// -- Remember ME
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      const Text(TTexts.rememberMe),
                    ],
                  ),
                  /// -- Forget Password
                  TextButton(onPressed: (){}, child: const Text(TTexts.forgetPassword))
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              /// Sign In Button
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.signIn))),
              const SizedBox(height: TSizes.spaceBtwItems),
              /// Create an Account Button
              SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignUpScreen()), child: const Text(TTexts.createAccount))),

            ],
          ),
        ),
      ),
    );
  }
}