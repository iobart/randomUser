// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultDto _$ResultDtoFromJson(Map<String, dynamic> json) => ResultDto(
      gender: json['gender'] as String,
      name: NameDto.fromJson(json['name'] as Map<String, dynamic>),
      dob: DobDto.fromJson(json['dob'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      cell: json['cell'] as String,
      picture: PictureDto.fromJson(json['picture'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultDtoToJson(ResultDto instance) => <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'dob': instance.dob,
      'phone': instance.phone,
      'cell': instance.cell,
      'picture': instance.picture,
    };

DobDto _$DobDtoFromJson(Map<String, dynamic> json) => DobDto(
      date: DateTime.parse(json['date'] as String),
      age: json['age'] as int,
    );

Map<String, dynamic> _$DobDtoToJson(DobDto instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'age': instance.age,
    };

PictureDto _$PictureDtoFromJson(Map<String, dynamic> json) => PictureDto(
      large: json['large'] as String,
      medium: json['medium'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$PictureDtoToJson(PictureDto instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };

NameDto _$NameDtoFromJson(Map<String, dynamic> json) => NameDto(
      title: json['title'] as String,
      first: json['first'] as String,
      last: json['last'] as String,
    );

Map<String, dynamic> _$NameDtoToJson(NameDto instance) => <String, dynamic>{
      'title': instance.title,
      'first': instance.first,
      'last': instance.last,
    };
