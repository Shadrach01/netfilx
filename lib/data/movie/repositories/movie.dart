import 'package:dartz/dartz.dart';
import 'package:netflix/common/mapper/movie_mapper.dart';
import 'package:netflix/data/movie/sources/movie.dart';
import 'package:netflix/domain/movie/repositories/movie.dart';
import 'package:netflix/service_locator.dart';

import '../models/movie.dart';

class MovieRepositoryImpl extends MovieRepository {
  @override
  Future<Either> getTrendingMovies() async {
    var returnedData = await sl<MovieService>().getTrendingMovies();

    return returnedData.fold(
      (error) {
        return Left(error);
      },
      (data) {
        var movies = List.from(data['content'])
            .map(
              (item) =>
                  MovieMapper.toEntity(MovieModel.fromJson(item)),
            )
            .toList();
        return Right(movies);
      },
    );
  }
}
