import 'package:flutter/material.dart';
import 'package:love_story/love_days.dart';
import 'package:love_story/love_widget.dart';
import 'package:love_story/two_anniversary_page.dart';

import 'appbar_popup_action.dart';
import 'love_timeline.dart';
import 'one_anniversary_page.dart';

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
        "/one-anniversary": (context) => OneAnniversaryPage(),
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
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          AppBarPopupAction(title: "周年纪念", items: [
            AppBarPopupActionItem(0, "一周年", () {
              Navigator.of(context).pushNamed("/one-anniversary");
            }),
            AppBarPopupActionItem(1, "两周年", () {
              Navigator.of(context).pushNamed("/two-anniversary");
            }),
          ],),
          SizedBox(width: 50,),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [
            LoveWidget(),
            LoveDays(),
            LoveTimeline(),
          ],
        ),
      ),
    );
  }
}
