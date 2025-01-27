import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:netflix/core/constants/api_url.dart';
import 'package:netflix/core/network/dio_client.dart';
import 'package:netflix/data/auth/models/signin_req_params.dart';
import 'package:netflix/data/auth/models/signup_req_params.dart';
import 'package:netflix/service_locator.dart';

abstract class AuthService {
  Future<Either> signUp(SignUpReqParams params);
  Future<Either> signIn(SignInReqParams params);
}

class AuthApiServiceImpl extends AuthService {
  @override
  Future<Either> signUp(SignUpReqParams params) async {
    try {
      var response = await sl<DioClient>().post(
        ApiUrl.signUp,
        data: params.toMap(),
      );

      return Right(response.data);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }

  @override
  Future<Either> signIn(SignInReqParams params) async {
    try {
      var response = await sl<DioClient>().post(
        ApiUrl.signIn,
        data: params.toMap(),
      );

      return Right(response.data);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
