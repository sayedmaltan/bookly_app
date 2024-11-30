import 'package:bookly_app/features/home/data/models/book_model.dart';

abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  List<BookModel> newestBooks;

  NewestBooksSuccess({required this.newestBooks});
}

class NewestBooksFailure extends NewestBooksState {
  final String errMessage;

  NewestBooksFailure({required this.errMessage});
}
