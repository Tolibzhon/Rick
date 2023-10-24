import 'package:rick/feature/episodes/data/models/episodes_model.dart';
import 'package:rick/feature/episodes/domain/repositories/get_episodes_repo.dart';

class GetEpisodesUseCase {
  GetEpisodesUseCase({
    required this.repo,
  });
  final GetEpisodesRepo repo;

  List<EpisodesResult> episodesResultList = [];

  Future<EpisodesModel> getEpisodesRepo({
    required String name,
    required String airDate,
    required String episode,
    required int page,
  }) async {
    try {
      final result = await repo.getEpisodesRepo(
        name: name,
        airDate: airDate,
        episode: episode,
        page: page,
      );

      return result;
    } catch (e) {
      rethrow;
    }
  }
}
