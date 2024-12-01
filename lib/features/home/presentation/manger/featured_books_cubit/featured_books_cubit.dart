import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.homeRepo}) : super(FeaturedBooksInitial());
  HomeRepo homeRepo;

  static FeaturedBooksCubit get(context) {
    return BlocProvider.of(context);
  }

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => {emit(FeaturedBooksFailure(errMessage: failure.errMessage))},
      (books) {
        emit(FeaturedBooksSuccess(featuredBooks: books));
      },
    );
  }
}
