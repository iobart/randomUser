import 'package:json_annotation/json_annotation.dart';

part 'result_dto.g.dart';

@JsonSerializable()
class ResultDto {
  final String gender;
  final NameDto name;
  final DobDto dob;
  final String phone;
  final String cell;
  final PictureDto picture;

  ResultDto({
    required this.gender,
    required this.name,
    required this.dob,
    required this.phone,
    required this.cell,
    required this.picture,
  });

  factory ResultDto.fromJson(Map<String, dynamic> json) =>
      _$ResultDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ResultDtoToJson(this);
}

@JsonSerializable()
class DobDto {
  final DateTime date;
  final int age;

  DobDto({required this.date, required this.age});

  factory DobDto.fromJson(Map<String, dynamic> json) => _$DobDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DobDtoToJson(this);
}

@JsonSerializable()
class PictureDto {
  final String large;
  final String medium;
  final String thumbnail;

  PictureDto({required this.large, required this.medium, required this.thumbnail});

  factory PictureDto.fromJson(Map<String, dynamic> json) =>
      _$PictureDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PictureDtoToJson(this);
}

@JsonSerializable()
class NameDto {
  final String title;
  final String first;
  final String last;

  NameDto({required this.title, required this.first, required this.last});

  factory NameDto.fromJson(Map<String, dynamic> json) => _$NameDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NameDtoToJson(this);
}

