import 'package:randomusers/random/data/models/user_dto.dart';
import 'package:randomusers/random/domain/entities/result_model.dart';

///UserModel is the entity that represents the data that will be used in the application
class UserModel {
  final List<ResultModel> results;

  UserModel({List<ResultModel>? results})
      : results = results ?? <ResultModel>[];

  factory UserModel.fromUserDto(UserDto userDto) {
    return UserModel(
        results:
            userDto.results?.map((e) => ResultModel.fromResultDto(e)).toList());
  }
}
