import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String email;
  final String fullName;
  final String password;
  final bool isVerified;

  const User(
      {required this.id,
      required this.email,
      required this.fullName,
      required this.password,
      this.isVerified = false});

  @override
  List<Object?> get props => [id, email, fullName, password, isVerified];
}
