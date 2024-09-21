import 'package:Funtrails/feature/personalization/screens/Favorite/Favorite_Page.dart';
import 'package:Funtrails/feature/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class Tcarticons extends StatelessWidget {
  const Tcarticons({
    super.key,
    required this.onPressed,
    this.iconColor,
    this.counterBgColor,
    this.counterTextColor,
});

  final VoidCallback onPressed;
  final Color? iconColor;
  final Color? counterBgColor;
  final Color? counterTextColor;

  @override
  Widget build(BuildContext context) {
    bool dark = Theme.of(context).brightness == Brightness.dark;

    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(() => const CartScreen()),
          icon: Icon(
            Iconsax.shopping_cart,
            color: iconColor ?? (dark ? TColors.white : TColors.black),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterBgColor ??
                  (dark ? TColors.white : TColors.black.withOpacity(0.8)),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '4',
                style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: dark ? TColors.black : TColors.white,
                      fontSizeFactor: 0.8,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
