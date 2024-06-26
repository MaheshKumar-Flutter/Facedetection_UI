import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as HTTP;
import 'api_error_handler_model.dart';

class ApiHelperMethod {
  @protected
 static String serialize(Object? obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  @protected
  ErrorResponse handleConnectionError() {
    var result = ErrorResponse();
    result.statusCode = 502;
    result.message = "There is a problem connecting to the server.";
    return result;
  }

  @protected
  Future<ErrorResponse?> handleApiError(HTTP.Response response, bool tokenError) async {
    if ((tokenError && response.statusCode == 400) ||
        response.statusCode == 401) {
      return null;
    }

    Map<String, dynamic>? responseJObject;
    if (_isJsonResponse(response)) {
      responseJObject = json.decode(response.body);
    }
    return ErrorResponse.fromResponse(responseJObject, response.statusCode, tokenError);
  }

  bool _isJsonResponse(HTTP.Response response) {
    return (response.headers["content-type"]?.contains("json")) == true;
  }

}
