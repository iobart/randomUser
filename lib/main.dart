import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:randomusers/random/constans/route_constans.dart';
import 'package:randomusers/random/presentation/pages/home/home_view_model.dart';
import 'package:randomusers/core/injection/injection_di.dart';
import 'core/routes/route_generator.dart';

Future<void> main() async {
  await injectionSetup();
  runApp(MultiProvider(providers: [
    // View Models
    ChangeNotifierProvider<HomeViewModel>(
        create: (_) => locator<HomeViewModel>()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _mainkey = GlobalKey<FormState>();
    return MaterialApp(
      color: Colors.transparent,
      key: _mainkey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: homeRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
