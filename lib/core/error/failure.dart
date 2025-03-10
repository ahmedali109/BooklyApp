import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure("Connection Timeout");
      case DioExceptionType.sendTimeout:
        return const ServerFailure("Send Timeout");
      case DioExceptionType.receiveTimeout:
        return const ServerFailure("Receive Timeout");
      case DioExceptionType.badCertificate:
        return const ServerFailure("Bad Certificate");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data!);
      case DioExceptionType.cancel:
        return const ServerFailure("Request Cancelled");
      case DioExceptionType.connectionError:
        return const ServerFailure("Connection Error");
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return const ServerFailure("No Internet Connection");
        }
        return const ServerFailure("OPPS there was an Error , please try again");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return const ServerFailure(
          "your request was not found , please try again");
    } else if (statusCode == 500) {
      return const ServerFailure("Internal Server Error , please try again");
    } else {
      return const ServerFailure("OPPS there was an Error , please try again");
    }
  }
}
