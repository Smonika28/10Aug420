class ContactUsModel {
  bool? status;
  int? statusCode;
  String? message;
  Data? data;
  String? errorMsg;
  ContactUsModel(
      {this.status, this.statusCode, this.message, this.data, this.errorMsg});

  ContactUsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

class Data {
  int? id;
  String? title;
  String? bannerImg;
  String? sectionTitle;
  String? sectionDescription;
  String? visitUs;
  String? callUs;
  String? mailUs;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.title,
      this.bannerImg,
      this.sectionTitle,
      this.sectionDescription,
      this.visitUs,
      this.callUs,
      this.mailUs,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    bannerImg = json['banner_img'];
    sectionTitle = json['section_title'];
    sectionDescription = json['section_description'];
    visitUs = json['visit_us'];
    callUs = json['call_us'];
    mailUs = json['mail_us'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}
