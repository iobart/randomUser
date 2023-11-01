import 'package:flutter/material.dart';
import 'package:randomusers/random/domain/entities/user_model.dart';

class UserTile extends StatelessWidget {
  final UserModel user;

  const UserTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedIconColor: Colors.green,
      collapsedBackgroundColor: Colors.black12,
      backgroundColor: Colors.green.withOpacity(0.2),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.results.first.picture.medium),
        radius: 30.0,
      ),
      title: Text(
        "${user.results.first.name.first} ${user.results.first.name.last}",
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      children: <Widget>[
        ListTile(
          tileColor: Colors.orange[50],
          title: Text(
            "Tel : ${user.results.first.cell}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            "Edad ${user.results.first.dob.age.toString()}",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
