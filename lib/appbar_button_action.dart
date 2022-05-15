import 'package:flutter/material.dart';

class AppBarButtonAction extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const AppBarButtonAction({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),),
        ),
      ),
      onTap: onTap,
      onHover: (bool value) {

      },
    );
  }
}
