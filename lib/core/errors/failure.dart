import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError({required DioError dioError}) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'Bad certificate');
      case DioExceptionType.badResponse:
        ServerFailure.fromDioBadResponse(
            statusCode: dioError.response!.statusCode!,
            statusBadResponse: dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'No internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: 'Opps there was an Error, Please try again');
    }
    return ServerFailure(errMessage: 'Unexpected Error, Please try later!');
  }

  @override
  String toString(){
    return errMessage;
  }

  factory ServerFailure.fromDioBadResponse(
      {required int statusCode, required dynamic statusBadResponse}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: statusBadResponse['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'Your request not found, please try later!');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'Internal Server error, please try later!');
    }
    return ServerFailure(
        errMessage: 'Opps there was an Error, Please try again');
  }
}
