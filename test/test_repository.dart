

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:randomusers/random/domain/entities/user_model.dart';
import 'package:randomusers/random/domain/repositories/home_repository.dart';

import 'test_repository.mocks.dart';

@GenerateNiceMocks([MockSpec<HomeRepository>(as: #MockHomeRepository)])

void main() {
  final UserModel userModel = UserModel(results: null);
  group("Home repository ", () {
    final MockHomeRepository homeRepository = MockHomeRepository();
/// Returns a random user null result
    test("getRandomUser", () async {
      when(homeRepository.getRandomUser()).thenAnswer((realInvocation) async => userModel);
      final b=await homeRepository.getRandomUser();
      verify(homeRepository.getRandomUser());
      expect(b, userModel);
    });
  });
}
