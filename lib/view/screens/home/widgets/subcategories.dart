import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shafique/controller/category_controller.dart';
import 'package:shafique/data/model/response/category.dart';
import 'package:shafique/utils/colors.dart';
import 'package:shafique/view/base/network_image.dart';

class SubCategoriesView extends StatelessWidget {
  const SubCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 95,
        child: GetBuilder<CategoryController>(builder: (con) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: con.categories.first.subCategory.length,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (context, index) => CategoryWidget(
                selected: index == 0,
                category: con.categories.first.subCategory[index]),
          );
        }),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final bool selected;
  final SubCategory category;
  const CategoryWidget(
      {this.selected = false, required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                // padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: selected
                          ? primaryColor
                          : Theme.of(context).dividerColor),
                ),
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: CustomNetworkImage(
                        url: category.image, fit: BoxFit.cover),
                  ),
                )),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: selected
                            ? primaryColor
                            : Theme.of(context).dividerColor),
                  ),
                  child: Text(
                    category.products.length.toString(),
                    style: Theme.of(context).textTheme.titleSmall,
                  )),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(category.name, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}
