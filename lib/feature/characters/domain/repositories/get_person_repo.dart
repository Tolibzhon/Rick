import 'package:rick/feature/characters/data/models/person_model.dart';

abstract class GetPersonRepo {
  Future<PersonModel> getPersonRepo({
    required String name,
    required String gender,
    required String status,
    required int page,
  });
}
