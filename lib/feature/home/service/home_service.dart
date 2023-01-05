import 'dart:io';

import '../model/home_model.dart';
import 'IHomeService.dart';

part 'home_service_endpoint.dart';

class HomeService extends IHomeService {
  HomeService(super.dio);

  @override
  Future<List<HomeModel>> fetchAllHome() async {
    final response = await dio.get(_HomeServiceEndpoint.DOGS.rawValue);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      if (data is List) {
        return data.map((e) => HomeModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}
