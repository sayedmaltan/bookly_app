import 'package:bookly_app/features/home/data/models/book_model.dart';

abstract class FeaturedBooksState{}

 class FeaturedBooksInitial extends FeaturedBooksState{}

class FeaturedBooksLoading extends FeaturedBooksState{}

class FeaturedBooksSuccess extends FeaturedBooksState{
  List<BookModel> featuredBooks;
  FeaturedBooksSuccess({required this.featuredBooks});
}

class FeaturedBooksFailure extends FeaturedBooksState{
  final String errMessage;
   FeaturedBooksFailure({required this.errMessage});
}

