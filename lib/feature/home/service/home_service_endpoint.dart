part of 'home_service.dart';

enum _HomeServiceEndpoint { DOGS }
extension HomeServiceEndpointExtension on _HomeServiceEndpoint {
  String get rawValue {
    switch (this) {
      case _HomeServiceEndpoint.DOGS:
        return '/posts';

    }
  }
}
