
import 'package:e_com/common/widgets/curved_edges/curved_edges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../common/widgets/curved_edges/curved_edges_widget.dart';
import '../../../common/widgets/custom_shapes/circular_container.dart';
import '../../../common/widgets/custom_shapes/primary_header_container.dart';
import '../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             TPrimaryHeaderContainer(
               child: Container(

               )
             )
          ],
        ),
      ),
    );
  }
}






