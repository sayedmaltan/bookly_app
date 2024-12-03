import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  ApiService apiService;
  SearchRepoImpl({required this.apiService});



  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks({required String text}) async {
    try {
      List<BookModel> bookModelList = [];
      var response = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=$text&Sorting=Newest',
      );
      for (var modelItem in response['items']) {
        bookModelList.add(BookModel.fromJson(modelItem));
      }
      return right(bookModelList);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(dioError: e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
