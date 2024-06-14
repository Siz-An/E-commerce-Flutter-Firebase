
import 'package:e_com/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import '../../../common/widgets/custom_shapes/primary_header_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             TPrimaryHeaderContainer(
               child: Column(
                 children: [
                   TAppBar(title: Column(
                     children: [
                       Text( TTexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey),),
                       Text( TTexts.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white ),)
                     ],
                   ),)
                 ],
               )
             )
          ],
        ),
      ),
    );
  }
}






