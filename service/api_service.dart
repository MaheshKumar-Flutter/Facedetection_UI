import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

import 'package:face_detection/service/apiHelperMethod.dart';
import 'package:face_detection/service/cacheService.dart';
import 'package:face_detection/sublocator.dart';

import '../router.dart';
import '../utils/url.dart';
import 'dialog/dialogManagerService.dart';

String urlData = "";

String baseUrl = BaseUrl.dummyProd;

final PreferenceService preferenceService = locator<PreferenceService>();

var response;

class ApiService {
  loginCall(
      String? name, String? password, String? regid, String? devid) async {
    urlData =
        "$baseUrl/api/userauthentication/getuserauthentication?loginId=$name&password=$password&regid=$regid&devid=$devid";

    print(urlData);

    var response = await http.get(
      Uri.parse(
        urlData,
      ),
      headers: _headers(null, false),
    );
    print("response.statusCode");
    print(response.body);
    print(response.statusCode);
    try {
      // if (response.statusCode == 200) {
      //   return LoginModel.fromJson(jsonDecode(response.body));
      // }
    } catch (e) {
      throw Exception('failed to load');
    }
  }

  Map<String, String> _headers(Object? body, bool authenticated) {
    Map<String, String> headerParams = {};
    headerParams["HttpHeaders.contentTypeHeader"] = "application/json";

    if (body is String) {
      headerParams["Content-Type"] = "application/x-www-form-urlencoded";
      headerParams["Content-Type"] = "application/json";
      headerParams["Charset"] = "utf-8";
    } else if (body is List<dynamic>) {
      headerParams["Content-Type"] = "application/json";
    } else if (body is Map) {
      headerParams['Accept'] = "application/json";
      headerParams["Content-Type"] = "application/json";
      headerParams["Charset"] = "utf-8";
    } else if (body is http.MultipartRequest) {
      headerParams['Accept'] = "application/json";
      headerParams["Content-Type"] = "multipart/form-data";
    }

    if (authenticated) {
      headerParams['Authorization'] =
          "Bearer ${preferenceService.getBearerToken().isEmpty ? "" : preferenceService.getBearerToken()}";
    }

    return headerParams;
  }

  Future<http.Response?> _handleResponse(http.Response? response) async {
    if (response == null) {
      return null;
    }

    debugPrint(response.body);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      print("response printing from hagle responce $response");
      return response;
    } else if (response.statusCode == 401) {
      cacheService.clearData();
      // Future<void> signOutGoogle() async {
      // }
      cacheService.clearData();
      navigationService.popAllAndPushNamed(Routes.login);
    } else if (response.statusCode >= 400 && response.statusCode < 500) {
      var error = await ApiHelperMethod().handleApiError(response, false);
      if (error != null) {
        locator<DialogService>().showDialog(
            title: error.message ?? '', description: error.getSingleMessage());
      }
    } else if (response.statusCode >= 500) {
      print("response printing from hagle responce $response   500");
    }

    return null;
  }
}
