import 'package:dartz/dartz.dart';
import 'package:figmamovie/features/auth/domain/entities/user.dart';
import 'package:figmamovie/features/auth/domain/repositories/auth_repository.dart';
import 'package:figmamovie/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'sign_in_usecase_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late SignInUsecase signInUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    signInUseCase = SignInUsecase(authRepository: mockAuthRepository);
  });

  group("signIn", () {
    const user = User(
        id: "1",
        email: "kdb@gmail.com",
        fullName: "kdb ismael",
        password: "password");

    test("Should return User on sucess", () async {
      // Arrange
      when(mockAuthRepository.signIn(
              email: user.email, password: user.password))
          .thenAnswer((_) async => const Right(user));

      // Act
      final result = await signInUseCase(
          SignInParams(email: user.email, password: user.password));

      //assert
      expect(result, const Right(user));

      //verify
      verify(mockAuthRepository.signIn(
          email: user.email, password: user.password));
      verifyNoMoreInteractions(mockAuthRepository);
    });
  });
}
