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
        child: Center(
          child: ListView(
            children: [
              SizedBox(height: 100,),
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
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/heart1.jpeg", height: 160, width: 160,),
                  Image.asset("assets/images/heart2.jpeg", height: 160, width: 160,),
                  Image.asset("assets/images/heart3.jpeg", height: 160, width: 160,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
