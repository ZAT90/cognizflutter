import 'package:cognizflutter/constants/api_constants.dart';
import 'package:cognizflutter/services/network_service.dart';

class ContactApi {
  NetworkService networkService = NetworkService();
  static ContactApi? _instance = ContactApi();
  static ContactApi? get instance {
    _instance ??= ContactApi();
    return _instance;
  }

  Future getContacts() {
    return networkService.execute(const NetworkRequest(
        type: NetworkRequestType.GET, path: ApiConstants.contacts));
  }
}
