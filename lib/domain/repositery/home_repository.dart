import 'package:dartz/dartz.dart';

import '../core/main failure/main_failure.dart';
import '../home page/user_response.dart';

abstract class HomeRepository {
  Future<Either<MainFailure, UserResponse>> getUserData();
}
