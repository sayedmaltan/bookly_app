import 'package:flutter/material.dart';

import '../../../../../core/utils/asstes.dart';

class CustomListItemPhoto extends StatelessWidget {
  const CustomListItemPhoto({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.31 / 2.1,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AssetsImages.testListItem,
                )),
            borderRadius: BorderRadiusDirectional.circular(16)),
      ),
    );
  }
}
