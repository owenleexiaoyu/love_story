import 'package:flutter/material.dart';

class AppBarPopupAction extends StatelessWidget {
  final String title;
  final List<AppBarPopupActionItem> items;

  const AppBarPopupAction({Key? key, required this.title, this.items = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      offset: Offset(
        20.0, 50.0
      ),
      itemBuilder: (context) {
        return items.map((e) => PopupMenuItem(
            child: Text(
            e.title
        ),
          value: e.value,
        ),).toList();
      },
      onSelected: (int index) {
        items[index].onTap();
      },
    );
  }
}

class AppBarPopupActionItem {

  String title;
  VoidCallback onTap;
  int value;

  AppBarPopupActionItem(this.value, this.title, this.onTap);

}
