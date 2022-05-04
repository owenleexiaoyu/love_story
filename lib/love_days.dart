import 'package:flutter/material.dart';

class LoveDays extends StatelessWidget {
  const LoveDays({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    DateTime firstDay = DateTime(2020, 5, 10);
    var diff = today.difference(firstDay);
    return Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "LXY",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 10,
                    decoration: TextDecoration.none,
                    fontFamily: "BungeeOutline",
                  ),
                ),
                Text(
                  "  ❤️  ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  "GXM",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 10,
                    decoration: TextDecoration.none,
                    fontFamily: "BungeeOutline",
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "在一起",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "${diff.inDays}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 150,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 10,
                    decoration: TextDecoration.none,
                    fontFamily: "BungeeOutline",
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "天啦 🎉",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
