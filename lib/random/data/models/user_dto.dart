import 'package:json_annotation/json_annotation.dart';
import 'package:randomusers/random/data/models/result_dto.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  final List<ResultDto>? results;

  UserDto({this.results});

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}
