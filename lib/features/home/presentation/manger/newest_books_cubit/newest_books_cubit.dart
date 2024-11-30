import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manger/newest_books_cubit/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState>{
  NewestBooksCubit({required this.homeRepo}):super(NewestBooksInitial());
  HomeRepo homeRepo ;

  static NewestBooksCubit get(context)
  {
    return BlocProvider.of(context);
  }

  Future<void> fetchNewestBooks()async {
    emit(NewestBooksLoading());
    var result=await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(errMessage: failure.errMessage));
      },
      (newestBooks) {
        emit(NewestBooksSuccess(newestBooks: newestBooks));
      },
    );
  }

}