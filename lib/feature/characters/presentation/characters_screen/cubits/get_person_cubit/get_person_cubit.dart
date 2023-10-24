import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick/feature/characters/data/models/person_model.dart';
import 'package:rick/feature/characters/domain/use_cases/get_person_use_case.dart';

part 'get_person_state.dart';
part 'get_person_cubit.freezed.dart';

class GetPersonCubit extends Cubit<GetPersonState> {
  GetPersonCubit({required this.useCase})
      : super(const GetPersonState.loading()) {
    getPersons();
  }

  final GetPersonUseCase useCase;

  String name = '';
  String gender = '';
  String status = '';
  int page = 1;

  Future<void> getPersons({
    String? nameFrom,
    String? genderFrom,
    String? statusFrom,
  }) async {
    if (nameFrom != null) {
      name = nameFrom;
    }
    if (genderFrom != null) {
      gender = genderFrom;
    }
    if (statusFrom != null) {
      status = statusFrom;
    }

    try {
      final result = await useCase.getPersonRepo(
        name: name,
        gender: gender,
        status: status,
        page: page,
      );

      emit(GetPersonState.success(result));
    } catch (e) {
      emit(GetPersonState.error(e.toString()));
    }
  }
}
