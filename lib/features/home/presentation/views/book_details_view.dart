import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({
    super.key, required this.bookModel,
  });
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    SimilarBooksCubit similarBooksCubit= SimilarBooksCubit.get(context);
    if(widget.bookModel.volumeInfo!.categories!.isNotEmpty)
      {
        similarBooksCubit.fetchSimilarBooks(category: widget.bookModel.volumeInfo!.categories![0]);
      }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBody(
        bookModel: widget.bookModel,
      ),
    );
  }
}
