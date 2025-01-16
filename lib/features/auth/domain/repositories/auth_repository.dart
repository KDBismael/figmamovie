import 'package:dartz/dartz.dart';
import 'package:figmamovie/core/errors/failure.dart';
import 'package:figmamovie/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> signIn(
      {required String email, required String password});
  Future<Either<Failure, String>> signUp({required User user});
  Future<Either<Failure, User>> verification({required String code});
}
