import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListItemPhoto extends StatelessWidget {
  const CustomListItemPhoto({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3 / 2.1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => CustomLoadingWidget(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}