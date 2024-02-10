import 'package:flutter/material.dart';

class DiscountWidget extends StatelessWidget {
  final String discount;
  const DiscountWidget({required this.discount, super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
      left: 5,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        decoration: const BoxDecoration(color: Colors.green),
        child: Text(
          discount,
          style: const TextStyle(
            fontSize: 9,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
