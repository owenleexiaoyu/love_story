import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OneAnniversaryPage extends StatelessWidget {
  const OneAnniversaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = min(600.0, MediaQuery.of(context).size.width);
    var imageSize = (width - 90) / 3 - 10;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.withOpacity(0.5),
        child: Center(
          child: Container(
            width: width,
            height: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: ListView(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset("assets/images/wechat_avatar.jpeg", width: 60, height: 60,)),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "微雨时光",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF546B89)
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "一周年啦 🎉\n以后年年有我",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Image.asset("assets/images/one_anni_1.jpeg", width: imageSize, height: imageSize, fit: BoxFit.cover,),
                            SizedBox(width: 5,),
                            Image.asset("assets/images/one_anni_2.jpeg", width: imageSize, height: imageSize, fit: BoxFit.cover),
                            SizedBox(width: 5,),
                            Image.asset("assets/images/one_anni_3.jpeg", width: imageSize, height: imageSize, fit: BoxFit.cover),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "提到了：小萌",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "2021年5月10日 13:33",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.favorite_border_outlined, color: Color(0xFF546B89), size: 20,),
                      SizedBox(width: 8,),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset("assets/images/wechat_avatar.jpeg", width: 40, height: 40,)),
                      SizedBox(width: 4,),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset("assets/images/xiaomeng_wechat_avatar.jpeg", width: 40, height: 40,)),
                    ],
                  ),
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}
