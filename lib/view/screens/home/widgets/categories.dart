import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shafique/controller/category_controller.dart';
import 'package:shafique/data/model/response/category.dart';
import 'package:shafique/utils/colors.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 42,
        child: GetBuilder<CategoryController>(builder: (con) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: con.categories.length,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (context, index) => CategoryWidget(
                selected: index == 0, category: con.categories[index]),
          );
        }),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final bool selected;
  final Category category;
  const CategoryWidget(
      {this.selected = false, required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(right: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                  color:
                      selected ? primaryColor : Theme.of(context).dividerColor),
            ),
            child: Text(category.name,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: selected ? primaryColor : null,
                      fontWeight: selected ? FontWeight.bold : null,
                    )),
          ),
        ),
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
                category.subCategory.length.toString(),
                style: Theme.of(context).textTheme.titleSmall,
              )),
        ),
      ],
    );
  }
}
