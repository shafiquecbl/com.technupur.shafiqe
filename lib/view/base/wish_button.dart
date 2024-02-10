import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shafique/utils/colors.dart';

class WishButton extends StatelessWidget {
  final bool favourite;
  const WishButton({
    Key? key,
    this.favourite = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: favourite ? primaryColor : null,
        shape: BoxShape.circle,
      ),
      child: InkWell(
        onTap: () {},
        child:
            Icon(Iconsax.heart, color: favourite ? Colors.white : primaryColor),
      ),
    );
  }
}
