import 'package:flutter/material.dart';

import 'package:project/utils/app_constants.dart';

import 'package:project/widgets/cards/sedans_card.dart';
import 'package:project/widgets/cards/suvs_card.dart';
import 'package:project/widgets/cards/luxury_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3-column-preview',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF2F2F2),
        useMaterial3: true,
      ),
      home: const HomePage(title: '3-column-preview Challenger'),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool useRowLayout = screenWidth >= AppConstants.cardBKPScreen;

    const List<Widget> cards = <Widget>[
      SedansCardWidget(),
      SuvsCardWidget(),
      LuxuryCardWidget(),
    ];

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: useRowLayout ? Axis.horizontal : Axis.vertical,
          child: useRowLayout
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: cards,
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: cards,
                ),
        ),
      ),
    );
  }
}
