import 'dart:convert';
import 'package:http/http.dart';
import 'package:randomusers/core/utils/network_utils.dart';
import 'package:randomusers/random/constans/constans.dart';
import 'package:randomusers/random/data/models/user_dto.dart';
import 'package:injectable/injectable.dart';
@lazySingleton
class RandomApi{

  /// Connects to the service and retrieves a random user
  Future<UserDto?> getRandomUser() async {
    final Response call = await _get(kRandomRoute);
    if (call == null) {
      return null;
    }

    final dynamic callBody = jsonDecode(call.body);
    final List<dynamic>? results = callBody['results'];
    if (results == null || results.isEmpty) {
      return null;
    }
    return UserDto.fromJson(callBody);
  }


/// Generic method to make a GET request
  Future<Response> _get(String url) async {
    Uri uri = Uri.parse(url);
    Response callResponse = (await apiCall(get(uri)))!;
    return callResponse;
  }
}