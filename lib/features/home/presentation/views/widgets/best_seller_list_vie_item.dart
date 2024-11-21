import 'package:flutter/material.dart';

import 'best_seller_list_view_coulmn_text.dart';
import 'custom_list_view_item_photo.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomListItemPhoto(),
          SizedBox(width: 30,),
          BestSellerListViewColumnText()
        ],
      ),
    );
  }
}
