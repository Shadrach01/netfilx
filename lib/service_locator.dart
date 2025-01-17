import 'package:get_it/get_it.dart';
import 'package:netflix/core/network/dio_client.dart';
import 'package:netflix/data/auth/repositories/auth.dart';
import 'package:netflix/data/auth/sources/auth_api_service.dart';
import 'package:netflix/data/movie/repositories/movie.dart';
import 'package:netflix/data/movie/sources/movie.dart';
import 'package:netflix/domain/auth/repositories/auth.dart';
import 'package:netflix/domain/auth/usecases/is_logged_in.dart';
import 'package:netflix/domain/auth/usecases/signin.dart';
import 'package:netflix/domain/auth/usecases/signup.dart';
import 'package:netflix/domain/movie/repositories/movie.dart';
import 'package:netflix/domain/movie/usecases/get_trending_movies.dart';

final sl = GetIt.instance;

void setUpServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  //Services
  sl.registerSingleton<AuthService>(AuthApiServiceImpl());
  sl.registerSingleton<MovieService>(MovieApiServiceImpl());

  // Repositories
  sl.registerSingleton<AuthRepository>(AuthRepoImpl());
  sl.registerSingleton<MovieRepository>(MovieRepositoryImpl());

  // Usecases
  sl.registerSingleton<SignUpUseCase>(SignUpUseCase());
  sl.registerSingleton<SignInUseCase>(SignInUseCase());
  sl.registerSingleton<IsLoggedInUseCase>(IsLoggedInUseCase());
  sl.registerSingleton<GetTrendingMoviesUseCase>(
      GetTrendingMoviesUseCase());
}
