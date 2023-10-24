import 'package:rick/feature/episodes/data/models/episodes_model.dart';

abstract class GetEpisodesRepo {
  Future<EpisodesModel> getEpisodesRepo({
    required String name,
    required String airDate,
    required String episode,
    required int page,
  });
}
