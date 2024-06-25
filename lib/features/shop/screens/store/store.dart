
import 'package:e_com/common/widgets/products/cart/cart_menu_icons.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Stores'),
        actions: [
          TCartCounterIcons(onPressed: (){})
        ],
      ),
    );
  }
}
