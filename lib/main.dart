import 'package:flutter/material.dart';
import 'package:flutter_cubit/models/destination_model.dart';
import 'package:flutter_cubit/models/onboard_model.dart';
import 'package:flutter_cubit/pages/detail_page.dart';
import 'package:flutter_cubit/pages/main_page.dart';
import 'package:flutter_cubit/pages/welcome_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => OnboardItemsModel(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => DestinationModal(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomePage(),
          '/mainPage': (context) => const MainPage(),
          '/detailsPage': (context) => const DetailPage(),
        },
      ),
    );
  }
}
