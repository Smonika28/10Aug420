import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import '../../../../utils/local_storage/local_storage.dart';
import '../model/registration_model.dart';

import '../repo/registration_repo.dart';
part 'seller_signup_event.dart';
part 'seller_signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    SignupRepository repository = SignupRepository();
    on<SignupEvents>((event, emit) async {
      Map<String, dynamic> requestModel = {
        "email": event.email,
        "name": event.name,
        "phone": event.phone,
        "password": event.password,
        "confirm_password": event.confirmPassword,
        "user_type": "BUSINESS_OWNER"
      };
      try {
        emit(SignupLodingState());
        if (kDebugMode) {
          print(requestModel);
        }
        final myList = await repository.getSignup(requestModel);
        if (kDebugMode) {
          if (kDebugMode) {
            print('myListdata--> $myList');
          }
        }
        if (kDebugMode) {
          print("statusss-->  ${myList.status}");
        }
        if (myList.status == true) {
          LocalStorageService().saveToDisk(
              LocalStorageService.ACCESS_TOKEN_KEY, myList.data?.authToken);
          emit(SignupLoadedState(responseModel: myList));
        } else {
          emit(SignupErrorState(errorMsg: myList.message.toString()));
        }
      } on NetworkError {
        emit(SignupErrorState(errorMsg: "No Internet Connection"));
      }
    });
  }
}

