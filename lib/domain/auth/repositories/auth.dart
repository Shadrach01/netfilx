import 'package:dartz/dartz.dart';
import 'package:netflix/data/auth/models/signup_req_params.dart';

abstract class AuthRepository {
  // Sign up method

  Future<Either> signUp(SignUpReqParams params);
}
