import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AnniversaryEgg extends StatelessWidget {
  const AnniversaryEgg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    if (kDebugMode ||
        today.year == 2022 && today.month == 5 && today.day == 10) {
      return Positioned(
          right: 40,
          top: 40,
          child: InkWell(
            child: Image.asset(
              "assets/images/anniversary_box.png",
              width: 80,
              height: 80,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/two-anniversary");
            },
          ));
    } else {
      return SizedBox.shrink();
    }
  }
}
