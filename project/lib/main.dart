import 'package:flutter/material.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
    const double breakpoint = 921.0;

    final bool useRowLayout = screenWidth >= breakpoint;

    const List<Widget> cards = <Widget>[
      SedansCardWidget(),
      SuvsCardWidget(),
      LuxuryCardWidget(),
    ];

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      body: SingleChildScrollView(
        scrollDirection: useRowLayout ? Axis.horizontal : Axis.vertical,
        child: Center(
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
