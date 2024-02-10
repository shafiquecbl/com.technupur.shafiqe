import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shafique/utils/images.dart';
import 'package:shafique/view/base/divider.dart';
import 'package:shafique/view/screens/home/widgets/subcategories.dart';
import 'widgets/categories.dart';
import 'widgets/products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(Icons.menu),
                ),
                Image.asset(Images.logoName, width: 150),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Iconsax.search_normal),
                )
              ],
            ),
            const SizedBox(height: 10),
            const CustomDivider(),
            const CategoriesView(),
            const CustomDivider(),
            const SubCategoriesView(),
            const ProductsView(),
          ],
        ),
      ),
    );
  }
}
