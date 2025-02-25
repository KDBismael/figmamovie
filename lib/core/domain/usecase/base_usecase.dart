import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:figmamovie/core/errors/failure.dart';

abstract class BaseUsecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
