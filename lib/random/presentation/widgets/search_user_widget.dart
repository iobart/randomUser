import 'package:flutter/material.dart';
import 'package:randomusers/random/presentation/pages/home/home_view_model.dart';
///Widget that contains the search bar
class SearchUserTile extends StatelessWidget {
  final HomeViewModel homeViewModel;
   SearchUserTile({super.key,required this.homeViewModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 5, right: 5, bottom: 5),
      child: TextField(
        onChanged: (query) {
          homeViewModel.filterUsers(query);
        },
        decoration: const InputDecoration(
          labelText: "Buscar",
          hintText: "Buscar",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
        ),
      ),
    );
  }
}
