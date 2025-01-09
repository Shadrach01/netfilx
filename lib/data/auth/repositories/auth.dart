import 'package:dartz/dartz.dart';
import 'package:netflix/data/auth/sources/auth_api_service.dart';
import 'package:netflix/domain/auth/repositories/auth.dart';
import 'package:netflix/service_locator.dart';

import '../models/signup_req_params.dart';

class AuthRepoImpl extends AuthRepository {
  // Sign up method implementation
  @override
  Future<Either> signUp(SignUpReqParams params) async {
    return await sl<AuthApiService>().signUp(params);
  }
}
