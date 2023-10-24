import 'package:dio/dio.dart';
import 'package:rick/feature/episodes/data/models/episodes_model.dart';
import 'package:rick/feature/episodes/domain/repositories/get_episodes_repo.dart';
import 'package:rick/server/catch_exception.dart';

class GetEpisodesRepoImpl implements GetEpisodesRepo {
  GetEpisodesRepoImpl({required this.dio});
  final Dio dio;

  @override
  Future<EpisodesModel> getEpisodesRepo({
    required String name,
    required String airDate,
    required String episode,
    required int page,
  }) async {
    try {
      final response = await dio.get(
        'episode',
        queryParameters: {
          'page': page,
          'name': name,
          'airDate': airDate,
          'episode': episode,
        },
      );
      return EpisodesModel.fromJson(response.data);
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
