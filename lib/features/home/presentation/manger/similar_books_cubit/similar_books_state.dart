import 'package:bookly_app/features/home/data/models/book_model.dart';

abstract class SimilarBooksState{}

 class SimilarBooksInitial extends SimilarBooksState{}

class SimilarBooksLoading extends SimilarBooksState{}

class SimilarBooksSuccess extends SimilarBooksState{
  List<BookModel> similarBooks;
  SimilarBooksSuccess({required this.similarBooks});
}

class SimilarBooksFailure extends SimilarBooksState{
  final String errMessage;
   SimilarBooksFailure({required this.errMessage});
}

