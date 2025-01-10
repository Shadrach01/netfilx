import 'package:dartz/dartz.dart';
import 'package:netflix/data/auth/models/signup_req_params.dart';

import '../../../data/auth/models/signin_req_params.dart';

abstract class AuthRepository {
  // Sign up method

  Future<Either> signUp(SignUpReqParams params);

  Future<Either> signIn(SignInReqParams params);

  Future<bool> isLoggedIn();
}
