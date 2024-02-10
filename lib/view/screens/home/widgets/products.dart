import 'package:flutter/material.dart';
import 'package:shafique/utils/colors.dart';
import 'package:shafique/view/base/discount.dart';
import 'package:shafique/view/base/network_image.dart';
import 'package:shafique/view/base/wish_button.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text('Products',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      )),
              const SizedBox(width: 5),
              Text('(Bag)',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold, color: primaryColor)),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: const Wrap(
                  spacing: 5,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text('View All', style: TextStyle(color: primaryColor)),
                    Icon(Icons.arrow_forward_ios,
                        size: 15, color: Colors.black),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemBuilder: (context, index) => const ProductWidget(),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.4,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: const CustomNetworkImage(
                      url: 'https://picsum.photos/200'),
                ),
                const DiscountWidget(discount: '-0.00%'),
                const Positioned(bottom: 5, right: 5, child: WishButton()),
              ],
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text('Product Name',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).hintColor,
                )),
        Row(
          children: [
            Text(
              '\$ 200',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).hintColor,
                    decoration: TextDecoration.lineThrough,
                  ),
            ),
            const SizedBox(width: 5),
            Text('\$ 100',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    )),
          ],
        ),
        const SizedBox(height: 5),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.4,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: secondaryColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text('Sold Out',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: primaryColor)),
              )),
        )
      ],
    );
  }
}
