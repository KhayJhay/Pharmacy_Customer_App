import 'package:flutter/material.dart';

class appBarWidget extends StatelessWidget {
  final Widget title;
  final IconData icon;
  final Widget? widget;
  final VoidCallback? press;
  const appBarWidget(
      {Key? key,
      required this.title,
      required this.icon,
      this.widget,
      this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: press,
            icon: Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
          ),
          title,
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: widget,
          ),
        ],
      ),
    );
  }
}
