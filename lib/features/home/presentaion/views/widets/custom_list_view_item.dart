import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.31 / 2.1,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/medium.webp',
                )),
            borderRadius: BorderRadiusDirectional.circular(16)),
      ),
    );
  }
}


