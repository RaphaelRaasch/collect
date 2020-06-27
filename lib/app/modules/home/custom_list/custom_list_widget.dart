import 'package:flutter/material.dart';

class CustomListWidget extends StatelessWidget {
  final title;
  final text1;
  final text2;

  const CustomListWidget({
    @required this.title,
    @required this.text1,
    @required this.text2,
  });
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Container(
      padding:
          EdgeInsets.only(bottom: sh * 0.03, left: sw * 0.03, right: sw * 0.03),
      child: Container(
        height: sh * 0.25,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: Colors.black26,
            offset: Offset(2, 2),
          )
        ]),
        child: Expanded(
          child: ListTile(
              title: title,
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: sh * 0.03,
                  ),
                  Text(
                    text1,
                    style: TextStyle(fontSize: sh * 0.03),
                  ),
                  SizedBox(height: sh * 0.06),
                  Text(
                    text2,
                    style: TextStyle(fontSize: sh * 0.03),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
