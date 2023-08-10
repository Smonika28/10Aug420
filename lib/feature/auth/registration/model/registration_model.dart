class SignupModel {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  SignupModel({this.status, this.statusCode, this.data, this.message});

  SignupModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['statusCode'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  SignupModel.withError(String errorMsg) {
    message = errorMsg;
  }
  insertToJson(Map<String, dynamic> json) {
    return SignupModel.fromJson(json);
  }

  insertToError(String errorMsg) {
    return SignupModel.withError(errorMsg);
  }
}

class Data {
  String? authToken;
  User? user;

  Data({this.authToken, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    authToken = json['auth_token'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['auth_token'] = authToken;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  int? phone;
  int? password;
  int? confirmPassword;
  String? userType;
  User(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.password,
      this.confirmPassword,
        this.userType
     });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
    confirmPassword = json['confirm_password'];
     userType = json['user_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['password'] = password;
    data['confirm_password'] = confirmPassword;
     data['user_type'] = userType;
    return data;
  }
}
