import 'package:dio/dio.dart';

import '../model/home_model.dart';

abstract class IHomeService {
  final Dio dio;
  IHomeService(this.dio);
  Future<List<HomeModel>> fetchAllHome();
}
