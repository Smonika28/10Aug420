class DashboardModel {
  bool? status;
  String? message;
  String? statusCode;
  List<Data>? data;
  String? errorMsg;
  DashboardModel({this.status, this.message, this.statusCode, this.data, this.errorMsg});

  DashboardModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    statusCode = json['statusCode'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  DashboardModel.withError(String errorMsg) {
    errorMsg = errorMsg;
  }

}

class Data {
  int? id;
  String? title1;
  String? title2;
  String? description;
  String? bannerImg;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.title1,
        this.title2,
        this.description,
        this.bannerImg,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title1 = json['title_1'];
    title2 = json['title_2'];
    description = json['description'];
    bannerImg = json['banner_img'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }


}
