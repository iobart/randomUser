import 'package:randomusers/random/data/models/result_dto.dart';

///ResultModel is the entity that represents certain data that will be used in the application
class ResultModel {
  final String gender;
  final Name name;
  final Dob dob;
  final String phone;
  final String cell;
  final Picture picture;

  ResultModel({
    required this.gender,
    required this.name,
    required this.dob,
    required this.phone,
    required this.cell,
    required this.picture,
  });

  factory ResultModel.fromResultDto(ResultDto resultDto) {
    return ResultModel(
        gender: resultDto.gender,
        name: Name.fromNameDto(resultDto.name),
        dob: Dob.fromDobDto(resultDto.dob),
        phone: resultDto.phone,
        cell: resultDto.cell,
        picture: Picture.fromPictureDto(resultDto.picture));
  }
}

class Dob {
  final DateTime date;
  final int age;

  Dob({required this.date, required this.age});

  factory Dob.fromDobDto(DobDto dobDto) {
    return Dob(date: dobDto.date, age: dobDto.age);
  }
}

class Picture {
  final String large;
  final String medium;
  final String thumbnail;

  Picture({required this.large, required this.medium, required this.thumbnail});

  factory Picture.fromPictureDto(PictureDto pictureDto) {
    return Picture(
        large: pictureDto.large,
        medium: pictureDto.medium,
        thumbnail: pictureDto.thumbnail);
  }
}

class Name {
  final String title;
  final String first;
  final String last;

  Name({required this.title, required this.first, required this.last});

  factory Name.fromNameDto(NameDto nameDto) {
    return Name(title: nameDto.title, first: nameDto.first, last: nameDto.last);
  }
}
