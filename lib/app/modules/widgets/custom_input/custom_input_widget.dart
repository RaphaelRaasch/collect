import 'package:flutter/material.dart';

class CustomInputWidget extends StatelessWidget {
  final height;
  final hint;
  final horizontal;
  final vertical;
  final onChanged;
  final type;

  const CustomInputWidget(
      {Key key,
      this.height,
      this.hint,
      this.horizontal,
      this.vertical,
      this.onChanged, this.type})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(vertical: vertical),
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        height: height,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                color: Colors.black26,
                offset: Offset(2, 2),
              ),
            ],
            borderRadius: BorderRadius.circular(sh * 0.01)),
        child: Center(
          child: TextFormField(
            keyboardType: type,
            onChanged: onChanged,
            style: TextStyle(fontSize: sh * 0.03),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
            ),
          ),
        ),
      ),
    );
  }
}
