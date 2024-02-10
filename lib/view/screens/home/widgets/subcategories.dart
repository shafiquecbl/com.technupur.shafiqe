import 'package:flutter/material.dart';
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
    return Column(
      children: [
        Stack(
          children: [
            Container(
                padding: const EdgeInsets.all(2),
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
                    child: const CustomNetworkImage(
                        url: 'https://picsum.photos/200'),
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
                    1.toString(),
                    style: Theme.of(context).textTheme.titleSmall,
                  )),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text("Sub Category 1", style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}
