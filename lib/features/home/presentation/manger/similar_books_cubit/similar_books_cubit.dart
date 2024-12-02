import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit({
    required this.homeRepo,
  }) : super(SimilarBooksInitial());
  HomeRepo homeRepo;

  static SimilarBooksCubit get(context) {
    return BlocProvider.of(context);
  }

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) => {emit(SimilarBooksFailure(errMessage: failure.errMessage))},
      (books) {
        emit(SimilarBooksSuccess(similarBooks: books));
      },
    );
  }
}
