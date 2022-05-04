import 'package:flutter/material.dart';
import 'package:love_story/anniversary_egg.dart';
import 'package:love_story/love_days.dart';
import 'package:love_story/love_widget.dart';
import 'package:love_story/two_anniversary_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Love story of us',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => HomePage(),
        "/two-anniversary": (context) => TwoAnniversaryPage(),
      },
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  margin: EdgeInsets.only(top: 100),
                  child: Center(child: LoveWidget()),
                ),
                LoveDays(),
              ],
            ),
            AnniversaryEgg()
          ],
        ),
      ),
    );
  }
}
