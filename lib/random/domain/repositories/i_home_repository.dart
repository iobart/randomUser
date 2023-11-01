import 'package:randomusers/random/domain/entities/user_model.dart';

abstract class IHomeRepository {
  /// Returns a random user
  Future<UserModel> getRandomUser();
}
