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
      aspectRatio: 1.29 / 2.1,
      child: Container(
        decoration: BoxDecoration(
            image:  DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    imageUrl
                )),
            borderRadius: BorderRadiusDirectional.circular(16)),
      ),
    );
  }
}
