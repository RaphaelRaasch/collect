import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  final height;
  final onPressed;
  final title;
  final icon;

  const CustomAppBarWidget({Key key, this.height, this.onPressed, this.title, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFE000D3),
            Color(0xFF860BDE),
          ],
        ),
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(title),
        actions: [
          FlatButton(
            onPressed: onPressed,
            child: icon
          ),
        ],
      ),
    );
  }
}
