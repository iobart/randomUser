import 'package:randomusers/random/data/home/home_remote_data_source.dart';
import 'package:randomusers/random/data/models/user_dto.dart';
import 'package:randomusers/random/domain/entities/result_model.dart';
import 'package:randomusers/random/domain/entities/user_model.dart';
import 'package:injectable/injectable.dart';
import 'i_home_repository.dart';
@Injectable(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;
  HomeRepository({
   required  this.homeRemoteDataSource,
  }) ;

  @override
  /// Returns a random user
  Future<UserModel> getRandomUser() async {
    final UserDto _userDto = await homeRemoteDataSource.getRandomUser();
    final UserModel userModel = UserModel(
        results: _userDto.results
            ?.map((e) => ResultModel.fromResultDto(e))
            .toList());
    return userModel;
  }
}
