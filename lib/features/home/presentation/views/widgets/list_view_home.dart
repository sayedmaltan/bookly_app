import 'package:flutter/material.dart';

import 'custom_list_view_item_photo.dart';

class HorizontalListViewOfHome extends StatelessWidget {
  const HorizontalListViewOfHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: CustomListItemPhoto(),
        ),
      ),
    );
  }
}