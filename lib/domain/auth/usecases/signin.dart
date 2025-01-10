import 'package:dartz/dartz.dart';
import 'package:netflix/core/usecase/usecase.dart';
import 'package:netflix/domain/auth/repositories/auth.dart';
import 'package:netflix/service_locator.dart';

import '../../../data/auth/models/signin_req_params.dart';

class SignInUseCase extends UseCase<Either, SignInReqParams> {
  @override
  Future<Either> call({SignInReqParams? params}) async {
    return await sl<AuthRepository>().signIn(params!);
  }
}
