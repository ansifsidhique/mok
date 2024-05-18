import 'dart:convert';
import 'dart:developer';

import 'package:blocpersondetails/domain/core/main%20failure/main_failure.dart';
import 'package:blocpersondetails/domain/home%20page/user_response.dart';
import 'package:dartz/dartz.dart';
import '../../domain/repositery/home_repository.dart';
import 'package:http/http.dart' as http;

class HomeRepo implements HomeRepository {
  @override
  Future<Either<MainFailure, UserResponse>> getUserData() async {
    try {
      final response = await http
          .get(Uri.parse("https://dummy.restapiexample.com/api/v1/employees"));
      if (response.statusCode == 200) {
        final data = UserResponse.fromJson(jsonDecode(response.body));
        return Right(data);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
/*
class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailure, SearchResponse>> searchMovies(
      {required String movieQuery}) async {
    try {
      final response = await http.get(
        Uri.parse(ApiEndPoints.search + '?query=$movieQuery'),
        // Optionally, you can specify headers or other parameters here.
      );

      log(response.body.toString()); // logging response body

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = SearchResponse.fromJson(jsonDecode(response.body));
        return Right(data);
      } else {
        return Left(MainFailure.serverFailure());
      }
    } on http.ClientException catch (_) {
      return Left(MainFailure.clientFailure());
    } catch (_) {
      return Left(MainFailure.clientFailure());
    }
  }
}
 */
