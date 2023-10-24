import 'package:rick/feature/location/data/models/location_model.dart';

abstract class GetLocationRepo {
  Future<LocationModel> getLocationRepo({
    required String name,
    required String type,
    required String dimension,
    required int page,
  });
}
