import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:four20society/constants/apis_path/api_config_string.dart';
import 'package:four20society/feature/auth/login/model/login_model.dart';
import 'package:four20society/feature/category/model/category_model.dart';
import 'package:four20society/utils/local_storage/local_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../../feature/about_us/model/about_us_model.dart';
import '../../../feature/help_support/model/termcondition_model.dart';
import '../../../feature/notification/model/notification_model.dart';
import '../../../feature/product_details/model/productDetails_model.dart';
import '../../../feature/profile/model/profile_model.dart';
import '../../../feature/wish_list/model/wishlist_page_model.dart';
import '../../../global_widget/Custom_product_list_cardWidget_model.dart';
import '../../../global_widget/custom_home_products_model.dart';
import '../../../global_widget/custom_todays_deal_product_cart_model.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ApiProvider {
  final Dio _dio = Dio();
  LocalStorageService localStorageService = LocalStorageService();

  get productId => null;

  Future<UserLoginModel> login(Map<String, dynamic> reqModel) async {
    var res = await _dio.post(ApiEndPoints.login, data: reqModel);
    return res.statusCode == 200
        ? UserLoginModel.fromJson(res.data)
        : throw Exception('Something Went Wrong');
  }

  Future<CategoryModel> getAllCategory() async {
    Response response;
    String? authToken;

    String token = await localStorageService
            .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    if (kDebugMode) {
      print("token $token");
    }
    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer $token"
      };
      response = await _dio.post(ApiEndPoints.category);
      if (kDebugMode) {
        log('--------Response getCategory : $response');
        print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? CategoryModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return CategoryModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }

  // make api calling for featured_product Api

  Future<FeaturedProducts> getAllFeaturedProduct() async {
    Response response;
    String? authToken;

    String token = await localStorageService
            .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    if (kDebugMode) {
      print("token $token");
    }
    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer $token"
      };
      response = await _dio.post(ApiEndPoints.featuredProduct);
      if (kDebugMode) {
        log('--------Response getFeaturesProduct : $response');
        print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? FeaturedProducts.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return FeaturedProducts.withError(
          "You are offline. Please check your internet connection.");
    }
  }

//  apiProvider for today's deal api

  Future<TodaysDealsModel> getAllTodayDealProduct() async {
    Response response;
    String? authToken;

    String token = await localStorageService
            .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    if (kDebugMode) {
      print("token $token");
    }
    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer $token"
      };
      response = await _dio.post(ApiEndPoints.todayDeals);
      if (kDebugMode) {
        log('--------Response getTodayProducts : $response');
        print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? TodaysDealsModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return TodaysDealsModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }

  // api provider for product-by-category api
  Future<WishListModel> getAllWishlist() async {
    Response response;
    String? authToken;

    String token = await localStorageService
            .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    if (kDebugMode) {
      print("token $token");
    }
    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer $token"
      };
      response = await _dio.post(ApiEndPoints.wishlistProduct);
      if (kDebugMode) {
        log('--------Response getWishListProductsList : $response');
        print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? WishListModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return WishListModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }

//  api for wishlist (list)Api
  Future<WishListModel> getAllWishlistByCategory() async {
    Response response;
    String? authToken;

    String token = await localStorageService
            .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    if (kDebugMode) {
      print("token $token");
    }
    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer $token"
      };
      response = await _dio.post(ApiEndPoints.wishlistProduct);
      if (kDebugMode) {
        log('--------Response getTodayProducts : $response');
        print("hhihifgishgsfhgfhsdigdjgod this is wishList");
      }
      return response.statusCode == 200
          ? WishListModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return WishListModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }

  // Profile Api

  Future<ProfileModel> getProfile() async {
    Response response;
    String? authToken;

    String token = await localStorageService
            .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    if (kDebugMode) {
      print("token $token");
    }
    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer $token"
      };
      response = await _dio.post(ApiEndPoints.profileApi);
      if (kDebugMode) {
        log('--------Response getProfile : $response');
        print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? ProfileModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return ProfileModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }

  //ABOUTUS Api calling

  Future<AboutUsModel> getAboutUsData() async {
    final authTokn = await localStorageService
        .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY);
    if (kDebugMode) {
      print("authToken book-->$authTokn");
    }
    AboutUsModel? responseData;
    try {
      var response = await http.post(
        Uri.parse(
            "https://excellis.co.in/420-society-world/api/v1/cms/about-us"),
      );
      log("pandey ${response.body.toString()}");
      if (response.statusCode == 200) {
        if (kDebugMode) log("res--> ${response.body}");
        var decodedData = jsonDecode(response.body);
        var responseData = AboutUsModel.fromJson(decodedData);
        if (kDebugMode) {
          print("response data ---> $responseData");
        }
        return responseData;
      } else {
        if (kDebugMode) {
          print("error" + jsonDecode(response.body)["message"]);
        }
        return responseData!;
      }
    } catch (e) {
      return responseData!;
    }
  }

  //api of term and conditions
  Future<TermsConditionsModel> getTermConditionData() async {
    final authTokn = await localStorageService
        .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY);
    if (kDebugMode) {
      print("authToken book-->$authTokn");
    }
    TermsConditionsModel? responseData;
    try {
      var response = await http.post(
        Uri.parse(
            "https://excellis.co.in/420-society-world/api/v1/cms/terms-conditions"),
      );
      log("pandey ${response.body.toString()}");
      if (response.statusCode == 200) {
        if (kDebugMode) log("res--> ${response.body}");
        var decodedData = jsonDecode(response.body);
        var responseData = TermsConditionsModel.fromJson(decodedData);
        if (kDebugMode) {
          print("response data ---> $responseData");
        }
        return responseData;
      } else {
        if (kDebugMode) {
          print("error" + jsonDecode(response.body)["message"]);
        }
        return responseData!;
      }
    } catch (e) {
      return responseData!;
    }
  }

  //api for notification

  Future<NotificationModel> getNotificationData() async {
    final authTokn = await localStorageService
        .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY);
    if (kDebugMode) {
      print("authToken book-->$authTokn");
    }
    NotificationModel? responseData;
    try {
      var response = await http.post(
        Uri.parse(
            "https://excellis.co.in/420-society-world/api/v1/cms/terms-conditions"),
      );
      log("pandey ${response.body.toString()}");
      if (response.statusCode == 200) {
        if (kDebugMode) log("res--> ${response.body}");
        var decodedData = jsonDecode(response.body);
        var responseData = NotificationModel.fromJson(decodedData);
        if (kDebugMode) {
          print("response data ---> $responseData");
        }
        return responseData;
      } else {
        if (kDebugMode) {
          print("error" + jsonDecode(response.body)["message"]);
        }
        return responseData!;
      }
    } catch (e) {
      return responseData!;
    }
  }

  //Add wishlist Api calling
  Future<void> addProductList(Map<String, dynamic> formData) async {
    String token = await localStorageService
            .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    try {
      final Dio dio = Dio();
      dio.options.headers = {
        'Content-Type': "application/json",
        "Authorization": "Bearer $token"
      };
      if (kDebugMode) {
        print("token $token");
      }
      final response = await dio.post(ApiEndPoints.addWishList, data: formData);
      if (kDebugMode) {
        print("-------");
      }
      if (kDebugMode) {
        print(response.data['message']);
      }
    } catch (err) {
      if (kDebugMode) {
        print(err.toString());
      }
    }
  }

//  ProductDetails Api

  Future<ProductDetailsModel> getProductDetails() async {
    Response response;
    String? authToken;

    String token = await localStorageService
            .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";

    if (kDebugMode) {
      print("token $token");
    }
    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer $token",
      };
      final Map<String, dynamic> requestBody = {
        "product_id": productId,
      };
      response = await _dio.post(ApiEndPoints.productDetails);
      if (kDebugMode) {
        log('--------Response getProfile : $response');
        print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? ProductDetailsModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return ProductDetailsModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }
}
