import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick/feature/episodes/data/models/episodes_model.dart';
import 'package:rick/feature/episodes/domain/use_cases/get_episodes_use_case.dart';

part 'get_episodes_cubit.freezed.dart';

class GetEpisodesCubit extends Cubit<GetEpisodesState> {
  GetEpisodesCubit({required this.useCase})
      : super(const GetEpisodesState.loading()) {
    getEpisodes();
  }

  final GetEpisodesUseCase useCase;

  String name = '';
  String airDate = '';
  String episode = '';
  int page = 1;

  Future<void> getEpisodes({
    String? nameFrom,
    String? airDateFrom,
    String? episodeFrom,
  }) async {
    if (nameFrom != null) {
      name = nameFrom;
    }
    if (airDateFrom != null) {
      airDate = airDateFrom;
    }
    if (episodeFrom != null) {
      episode = episodeFrom;
    }

    try {
      final result = await useCase.getEpisodesRepo(
        name: name,
        airDate: airDate,
        episode: episode,
        page: page,
      );

      emit(GetEpisodesState.success(result));
    } catch (e) {
      emit(GetEpisodesState.error(e.toString()));
    }
  }
}

@freezed
class GetEpisodesState with _$GetEpisodesState {
  const factory GetEpisodesState.loading() = _Loading;
  const factory GetEpisodesState.error(String error) = _Error;
  const factory GetEpisodesState.success(EpisodesModel model) = _Success;
}
