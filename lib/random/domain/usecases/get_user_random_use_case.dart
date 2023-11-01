import 'package:randomusers/random/domain/entities/user_model.dart';
import 'package:randomusers/random/domain/repositories/i_home_repository.dart';
import 'package:injectable/injectable.dart';
@injectable
/// GetRandomUserUseCase is the class that manages the use case of getting a random user
class GetRandomUserUseCase {
  final IHomeRepository homeRepository;

  GetRandomUserUseCase({required this.homeRepository});

 Future<UserModel> invoke() async {
    return await homeRepository.getRandomUser();
  }
}
