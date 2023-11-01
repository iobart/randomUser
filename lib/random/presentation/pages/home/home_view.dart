import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:randomusers/random/presentation/widgets/list_menu_widget.dart';
import 'home_view_model.dart';
import 'package:randomusers/random/constans/desing_constants.dart';

class HomeView extends StatelessWidget {
  final HomeViewModel homeViewModel;

  HomeView({
    Key? key,
    required this.homeViewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mainkey = GlobalKey<FormState>();
    return Scaffold(
      key: _mainkey,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage(kBackgroundImage),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.dstATop,
                ),
              ),
            ),
          ),
          ListMenuWidget(),
        ],
      ),
      floatingActionButton: SpeedDial(
        onPress: () {
          homeViewModel.getRandomUsers(10);
        },
        animatedIcon: AnimatedIcons.add_event,
      ),
    );
  }
}
