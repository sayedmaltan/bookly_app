import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_vie_item.dart';
import 'package:flutter/material.dart';

class SearchItemsList extends StatelessWidget {
  const SearchItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: BestSellerListViewItem(),
      ),
    );
  }
}
