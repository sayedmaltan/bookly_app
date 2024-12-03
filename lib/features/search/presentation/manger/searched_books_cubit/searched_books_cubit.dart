import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:bookly_app/features/search/presentation/manger/searched_books_cubit/searched_books_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchedBooksCubit extends Cubit<SearchedBooksState> {
  SearchedBooksCubit({required this.searchRepo}) : super(SearchedBooksInitial());
  SearchRepo searchRepo;
  var controller=TextEditingController();

  static SearchedBooksCubit get(context) {
    return BlocProvider.of(context);
  }

  Future<void> fetchSearchedBooks({required String text}) async {
    emit(SearchedBooksLoading());
    var result = await searchRepo.fetchSearchedBooks(text: text);
    result.fold(
      (failure) => {emit(SearchedBooksFailure(errMessage: failure.errMessage))},
      (books) {
        emit(SearchedBooksSuccess(featuredBooks: books));
      },
    );
  }
}
