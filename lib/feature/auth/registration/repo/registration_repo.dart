import '../../../../constants/apis_path/api_config_string.dart';
import '../../../../utils/Api/api_provider.dart';
import '../model/registration_model.dart';

class SignupRepository {
  final apiProvider = ApiProvider();
  SignupModel userSignupModel = SignupModel();
  Future<dynamic> getSignup(Map<String, dynamic> reqModel) {
    return apiProvider.dataProcessor(
        reqModel, userSignupModel, ApiEndPoints.signup);
  }
}

class NetworkError extends Error {}
