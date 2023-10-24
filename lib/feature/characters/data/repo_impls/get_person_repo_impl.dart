import 'package:dio/dio.dart';
import 'package:rick/feature/characters/data/models/person_model.dart';
import 'package:rick/feature/characters/domain/repositories/get_person_repo.dart';
import 'package:rick/server/catch_exception.dart';

class GetPersonRepoImpl implements GetPersonRepo {
  GetPersonRepoImpl({required this.dio});
  final Dio dio;

  @override
  Future<PersonModel> getPersonRepo({
    required String name,
    required String gender,
    required String status,
    required int page,
  }) async {
    try {
      final response = await dio.get(
        'character',
        queryParameters: {
          'page': page,
          'name': name,
          'status': status,
          'gender': gender,
        },
      );
      return PersonModel.fromJson(response.data);
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
