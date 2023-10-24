import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick/feature/location/data/models/location_model.dart';
import 'package:rick/feature/location/domain/use_cases/get_location_use_case.dart';

part 'get_location_cubit.freezed.dart';

class GetLocationCubit extends Cubit<GetLocationState> {
  GetLocationCubit({required this.useCase})
      : super(const GetLocationState.loading()) {
    getLocation();
  }
  final GetLocationUseCase useCase;

  String name = '';
  String type = '';
  String dimension = '';
  int page = 1;

  Future<void> getLocation({
    String? nameFrom,
    String? typeFrom,
    String? dimensionFrom,
  }) async {
    if (nameFrom != null) {
      name = nameFrom;
    }
    if (typeFrom != null) {
      type = typeFrom;
    }
    if (dimensionFrom != null) {
      dimension = dimensionFrom;
    }
    try {
      final result = await useCase.getLocationRepo(
        name: name,
        type: type,
        dimension: dimension,
        page: page,
      );
      emit(GetLocationState.success(result));
    } catch (e) {
      emit(GetLocationState.error(e.toString()));
    }
  }
}

@freezed
class GetLocationState with _$GetLocationState {
  const factory GetLocationState.loading() = _Loading;
  const factory GetLocationState.error(String error) = _Error;
  const factory GetLocationState.success(LocationModel model) = _Success;
}
