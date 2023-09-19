import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:http/http.dart' as http;
import 'package:smart_shop/src/screen/const/api/api_const.dart';
import 'package:smart_shop/src/screen/const/helper/share_pref_helper.dart';



class ApiClient extends GetxService {
  static var client = http.Client();

  static const String noInternetMessage = 'Connection to api server failed';
  static const int timeoutInSeconds = 30;
  static String token = "";


  static Future<Response> postData(String uri, dynamic body,
      {Map<String, String>? headers}) async {
    token = await PrefsHelper.getString("token");

    var mainHeaders = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'

    };
    try {
      debugPrint('====> API Call: $uri\nHeader: $mainHeaders');
      debugPrint('====> API Body: $body');

      http.Response response = await client
          .post(
        Uri.parse(ApiConstant.appBaseUrl+uri),
        body:body,
        headers:headers??mainHeaders,
      )
          .timeout(const Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  static Future<Response> getData(String uri,
      {Map<String, dynamic>? query, Map<String, String>? headers}) async {
    token = await PrefsHelper.getString("token");
    var mainHeaders = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'

    };
    try {
      debugPrint('====> API Call: $uri\nHeader: $mainHeaders');

      http.Response response = await client
          .get(
        Uri.parse(ApiConstant.appBaseUrl + uri),
        headers: headers ?? mainHeaders,
      )
          .timeout(const Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri);
    } catch (e) {
      debugPrint('------------${e.toString()}');
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  static Future<Response> postMultipartData(String uri, Map<String, String> body, {List<MultipartBody>? multipartBody,List<MultipartListBody>? multipartListBody,Map<String, String>? headers}) async {
    try {
      token = await PrefsHelper.getString("token");
      var mainHeaders = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token'

      };
      debugPrint('====> API Call: $uri\nHeader: $mainHeaders');
      debugPrint('====> API Body: $body with ${multipartBody?.length} picture');

      //http.MultipartRequest _request = http.MultipartRequest('POST', Uri.parse("https://b936-114-130-157-130.ngrok-free.app/api/v1/user/profile/store/degree"));
      //_request.headers.addAll(headers ?? mainHeaders);
      // for(MultipartBody multipart in multipartBody!) {
      //   if(multipart.file != null) {
      //     Uint8List _list = await multipart.file.readAsBytes();
      //     _request.files.add(http.MultipartFile(
      //       multipart.key, multipart.file.readAsBytes().asStream(), _list.length,
      //       filename: '${DateTime.now().toString()}.png',
      //     ));
      //   }
      // }


      var request = http.MultipartRequest('POST', Uri.parse(ApiConstant.appBaseUrl+uri));
      request.fields.addAll(body);

      multipartBody?.forEach((element)async {
        request.files.add(await http.MultipartFile.fromPath(element.key, element.file.path));
      });


      request.headers.addAll(mainHeaders);
      http.StreamedResponse response = await request.send();
      final content = await response.stream.bytesToString();
      debugPrint(
          '====> API Response: [${response.statusCode}}] $uri\n${content}');

      return  Response(statusCode:response.statusCode, statusText:noInternetMessage,body:content);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }


  Future<Response> putData(String uri, dynamic body,
      {Map<String, String>? headers}) async {
    token = await PrefsHelper.getString("token");
    var mainHeaders = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    try {
      debugPrint('====> API Call: $uri\nHeader: $mainHeaders');
      debugPrint('====> API Body: $body');

      http.Response response = await http
          .put(
        Uri.parse(ApiConstant.appBaseUrl + uri),
        body: jsonEncode(body),
        headers: headers ?? mainHeaders,
      )
          .timeout(const Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> deleteData(String uri,
      {Map<String, String>? headers}) async {
    token = await PrefsHelper.getString("token");
    var mainHeaders = {
      'Content-Type': 'application/json',
      //'Authorization': 'Bearer $token',
      'Authorization': 'Bearer $token'
    };
    try {
      debugPrint('====> API Call: $uri\nHeader: $mainHeaders');

      http.Response response = await http
          .delete(
        Uri.parse(ApiConstant.appBaseUrl + uri),
        headers: headers ?? mainHeaders,
      )
          .timeout(const Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  static Response handleResponse(http.Response response, String uri) {

    dynamic body;
    try {
      body = jsonDecode(response.body);
    } catch (e) {
      debugPrint(e.toString());
    }
    Response response0 = Response(
      body: body ?? response.body,
      bodyString: response.body.toString(),
      request: Request(
          headers: response.request!.headers,
          method: response.request!.method,
          url: response.request!.url),
      headers: response.headers,
      statusCode: response.statusCode,
      statusText: response.reasonPhrase,
    );

    if (response0.statusCode != 200 &&
        response0.body != null &&
        response0.body is! String) {
      // if(_response.body.toString().startsWith('{errors: [{code:')) {
      //   ErrorResponse _errorResponse = ErrorResponse.fromJson(_response.body);
      //   _response = Response(statusCode: _response.statusCode, body: _response.body, statusText: _errorResponse.errors[0].message);
      // }else if(_response.body.toString().startsWith('{message')) {
      //   _response = Response(statusCode: _response.statusCode, body: _response.body, statusText: _response.body['message']);
      // }
      response0 = Response(
        statusCode: response0.statusCode,
        body: response0.body,
      );

    } else if (response0.statusCode != 200 && response0.body == null) {
      response0 = const Response(statusCode: 0, statusText: noInternetMessage);
    }

    debugPrint(
        '====> API Response: [${response0.statusCode}] $uri\n${response0.body}');
    // log.e("Handle Response error} ");
    return response0;
  }
}
class MultipartBody {
  String key;
  File file;

  MultipartBody(this.key, this.file);
}

class MultipartListBody {
  String key;
  String value;
  MultipartListBody(this.key, this.value);
}
