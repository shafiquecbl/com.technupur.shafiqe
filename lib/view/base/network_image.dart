import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shimmer/shimmer.dart';

class CustomNetworkImage extends StatefulWidget {
  final String? url;
  final BoxFit fit;
  final double loadingRadius;
  const CustomNetworkImage(
      {required this.url,
      this.fit = BoxFit.cover,
      this.loadingRadius = 16,
      Key? key})
      : super(key: key);

  @override
  State<CustomNetworkImage> createState() => _CustomNetworkImageState();
}

class _CustomNetworkImageState extends State<CustomNetworkImage> {
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: "${widget.url}",
      fit: BoxFit.cover,
      colorBlendMode: BlendMode.darken,
      color: Theme.of(context).cardColor,
      placeholder: (c, s) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(widget.loadingRadius),
          child: Shimmer.fromColors(
            baseColor: const Color(0xFFF0F0F0),
            highlightColor: const Color(0xFFE0E0E0),
            child: Container(color: Colors.grey[300]),
          ),
        );
      },
      errorWidget: (c, s, o) {
        return Center(
          child: Icon(Iconsax.gallery,
              size: 40, color: Theme.of(context).hintColor),
        );
      },
    );
  }
}
