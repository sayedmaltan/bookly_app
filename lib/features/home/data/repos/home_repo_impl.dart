import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    List<BookModel> bookModelList = [];
    try {
      var response = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=computer science&Sorting=newest',
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

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      List<BookModel> bookModelList = [];
      var response = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming',
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

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async {
    try {
      List<BookModel> bookModelList = [];
      var response = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=category&Sorting=Relevance',
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
