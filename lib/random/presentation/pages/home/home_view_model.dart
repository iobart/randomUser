import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:randomusers/random/domain/entities/user_model.dart';
import 'package:randomusers/random/domain/usecases/get_user_random_use_case.dart';
import 'package:injectable/injectable.dart';
@lazySingleton

/// This is the ViewModel for the HomeView is responsible for the business logic
class HomeViewModel extends ChangeNotifier {
  final GetRandomUserUseCase getRandomUserUseCase;

  HomeViewModel({required this.getRandomUserUseCase});

  List<UserModel> _users = [];
  bool _isListLoading = false;

  List<UserModel> get users => _users;
  bool get isListLoading => _isListLoading;

  void setUsers(List<UserModel> users) {
    _users = users;
    notifyListeners();
  }

  void setIsListLoading(bool isListLoading) {
    _isListLoading = isListLoading;
    notifyListeners();
  }

/// Get a random user from the API and add it to the list
  Future<void> getRandomUsers(int count) async {
    setIsListLoading(true);
    try {
      for (var i = 0; i < count; i++) {
        users.add(await getRandomUserUseCase.invoke());

      }
    } catch (e) {
      log(e.toString());
    } finally {
      setIsListLoading(false);
    }
  }



  /// Filter the list of users by name
  Future<List<UserModel>> filterUsers(String query) async {
    if (query.isEmpty) {
      setUsers(_users);
    } else {
      final filteredUsers = _users
          .where((user) => user.results.first.name.first.toLowerCase().contains(query.toLowerCase()))
          .toList();
      setUsers(filteredUsers);
    }
    return users;
  }
}

