import 'package:flutter/material.dart';

import 'best_seller_list_vie_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: BestSellerListViewItem(),
        ),
      ),
    );
  }
}
