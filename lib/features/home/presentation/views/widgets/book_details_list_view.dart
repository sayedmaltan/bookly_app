import 'package:flutter/material.dart';

import 'custom_list_view_item_photo.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: CustomListItemPhoto(
        ),
      ),
    );
  }
}
