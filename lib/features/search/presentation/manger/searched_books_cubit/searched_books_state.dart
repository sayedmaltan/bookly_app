import 'package:bookly_app/features/home/data/models/book_model.dart';

abstract class SearchedBooksState{}

 class SearchedBooksInitial extends SearchedBooksState{}

class SearchedBooksLoading extends SearchedBooksState{}

class SearchedBooksSuccess extends SearchedBooksState{
  List<BookModel> featuredBooks;
  SearchedBooksSuccess({required this.featuredBooks});
}

class SearchedBooksFailure extends SearchedBooksState{
  final String errMessage;
   SearchedBooksFailure({required this.errMessage});
}

