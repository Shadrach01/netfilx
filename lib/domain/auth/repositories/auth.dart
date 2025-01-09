import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  // Sign up method

  Future<Either> signUp();
}
