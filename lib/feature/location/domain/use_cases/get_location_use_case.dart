import 'package:rick/feature/location/data/models/location_model.dart';
import 'package:rick/feature/location/domain/repositories/get_location_repo.dart';

class GetLocationUseCase {
  GetLocationUseCase({
    required this.repo,
  });
  final GetLocationRepo repo;
  List<LocationResult> locationResultList = [];
  Future<LocationModel> getLocationRepo({
    required String name,
    required String type,
    required String dimension,
    required int page,
  }) async {
    try {
      final result = await repo.getLocationRepo(
        name: name,
        type: type,
        dimension: dimension,
        page: page,
      );
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
