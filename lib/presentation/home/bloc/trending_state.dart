import 'package:netflix/domain/movie/entities/movie.dart';

abstract class TrendingState {}

class TrendingMoviesLoading extends TrendingState {}

class TrendingMoviesLoaded extends TrendingState {
  final List<MovieEntity> movies;

  TrendingMoviesLoaded({required this.movies});
}

class FailureLoadingTrendingMovies extends TrendingState {
  final String errorMessage;

  FailureLoadingTrendingMovies({
    required this.errorMessage,
  });
}