import 'dart:ui';

import 'package:flutter/material.dart';

class TwoAnniversaryPage extends StatelessWidget {
  const TwoAnniversaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/cute_fish.jpeg",),
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.srcATop),
            fit: BoxFit.cover,
          )
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: 900,
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: Column(
                      children: [
                        Text(
                          "2022 年 5 月 10 日",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 50,),
                        Text(
                          "小萌 & 小鱼\n两周年快乐！！！\n🌹 ❤️ 🎉",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 80,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/heart1.jpeg", height: 160, width: 160,),
                        Image.asset("assets/images/heart2.jpeg", height: 160, width: 160,),
                        Image.asset("assets/images/heart3.jpeg", height: 160, width: 160,),
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    width: 900,
                    height: 600,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/letter_bg.jpg",),
                          fit: BoxFit.fitHeight,
                        ),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 300, vertical: 80),
                    child: Center(
                      child: Text("行者历无疆，\n池鱼跃波起。\n相逢红尘中，\n厮守时光里。",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Yozai",
                          fontSize: 20,
                          letterSpacing: 5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
