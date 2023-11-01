// UserTile.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:randomusers/random/domain/entities/user_model.dart';
import 'package:randomusers/random/presentation/pages/home/home_view_model.dart';
import 'package:randomusers/random/presentation/widgets/search_user_widget.dart';
import 'package:randomusers/random/presentation/widgets/user_tile.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';
import 'package:randomusers/core/injection/injection_di.dart';

///Widget that contains the list of users and the search bar

class ListMenuWidget extends StatefulWidget {
  ListMenuWidget({Key? key});

  @override
  State<ListMenuWidget> createState() => _ListMenuWidgetState();
}

class _ListMenuWidgetState extends State<ListMenuWidget> {
  final HomeViewModel _homeViewModel = locator<HomeViewModel>();

  @override
  initState() {
    _homeViewModel.getRandomUsers(10);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (BuildContext context, HomeViewModel value, Widget? child) {
        return Column(
          children: [
            //SearchUserTile
            SearchUserTile(homeViewModel: _homeViewModel,),
            //List of users
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: InfiniteList(
                    debounceDuration: const Duration(milliseconds: 500),
                    itemCount: value.users.length,
                    isLoading: value.isListLoading,
                    onFetchData: () async {
                      await value.getRandomUsers(10);
                    },
                    itemBuilder: (context, index) {
                      UserModel user = value.users[index];
                      return UserTile(user: user);
                    }),
              ),
            ),
          ],
        );
      },
    );
  }
}
