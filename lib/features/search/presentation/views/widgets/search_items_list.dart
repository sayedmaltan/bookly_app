import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_vie_item.dart';
import 'package:flutter/material.dart';

class SearchItemsList extends StatelessWidget {
  const SearchItemsList({
    super.key,
    required this.books,
  });

  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: BestSellerListViewItem(
          bookModel: books[index]
        ),
      ),
    );
  }
}
