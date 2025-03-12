import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          errorWidget: (context, url, err) => Container(
            decoration: const BoxDecoration(color: Colors.grey),
            child: const Icon(
              Icons.error,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}
