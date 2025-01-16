import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:figmamovie/core/domain/usecase/base_usecase.dart';
import 'package:figmamovie/core/errors/failure.dart';
import 'package:figmamovie/features/auth/domain/entities/user.dart';
import 'package:figmamovie/features/auth/domain/repositories/auth_repository.dart';

class SignInUsecase extends BaseUsecase<User, SignInParams> {
  final AuthRepository authRepository;
  SignInUsecase({required this.authRepository});

  @override
  Future<Either<Failure, User>> call(SignInParams params) {
    return authRepository.signIn(
        email: params.email, password: params.password);
  }
}

class SignInParams extends Equatable {
  final String email;
  final String password;

  const SignInParams({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
