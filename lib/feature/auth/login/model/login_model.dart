class UserLoginModel {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  UserLoginModel({this.status, this.statusCode, this.data, this.message});

  UserLoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['statusCode'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  UserLoginModel.withError(String errorMsg) {
    message = errorMsg;
  }
  insertToJson(Map<String, dynamic> json) {
    return UserLoginModel.fromJson(json);
  }

  insertToError(String errorMsg) {
    return UserLoginModel.withError(errorMsg);
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
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? zipcode;
  int? status;
  String? profilePicture;
  String? shopAddress;
  String? shopName;
  String? userType;

  User(
      {this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.phone,
        this.zipcode,
        this.status,
        this.profilePicture,
        this.shopAddress,
        this.shopName,
        this.userType});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    zipcode = json['zipcode'];
    status = json['status'];
    profilePicture = json['profile_picture'];
    shopAddress = json['shop_address'];
    shopName = json['shop_name'];
    userType = json['user_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['phone'] = phone;
    data['zipcode'] = zipcode;
    data['status'] = status;
    data['profile_picture'] = profilePicture;
    data['shop_address'] = shopAddress;
    data['shop_name'] = shopName;
    data['user_type'] = userType;
    return data;
  }
}
