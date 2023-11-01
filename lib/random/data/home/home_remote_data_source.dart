import 'package:randomusers/random/data/api/random_api.dart';
import 'package:randomusers/random/data/models/user_dto.dart';
import 'package:injectable/injectable.dart';
@injectable

/// HomeRemoteDataSource is the class that connects to the service and retrieves a random user
class HomeRemoteDataSource {
  final RandomApi randomApi;

  HomeRemoteDataSource({
    required this.randomApi,
  });

  Future<UserDto> getRandomUser() async {
    final UserDto? userModel =await randomApi.getRandomUser();
    return userModel??UserDto();
  }
}
