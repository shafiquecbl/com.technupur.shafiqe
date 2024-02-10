import 'package:flutter/material.dart';
import 'package:shafique/utils/colors.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 42,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemBuilder: (context, index) => CategoryWidget(selected: index == 0),
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final bool selected;
  const CategoryWidget({this.selected = false, super.key});

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
            child: Text("Category 1",
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
                1.toString(),
                style: Theme.of(context).textTheme.titleSmall,
              )),
        ),
      ],
    );
  }
}
