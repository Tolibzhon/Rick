import 'package:dio/dio.dart';
import 'package:rick/feature/location/data/models/location_model.dart';
import 'package:rick/feature/location/domain/repositories/get_location_repo.dart';
import 'package:rick/server/catch_exception.dart';

class GetLocationRepoImpl implements GetLocationRepo {
  GetLocationRepoImpl({required this.dio});
  final Dio dio;
  @override
  Future<LocationModel> getLocationRepo({
    required String name,
    required String type,
    required String dimension,
    required int page,
  }) async {
    try {
      final response = await dio.get(
        'location',
        queryParameters: {
          'page': page,
          'name': name,
          'type': type,
          'dimension': dimension,
        },
      );
      return LocationModel.fromJson(response.data);
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
