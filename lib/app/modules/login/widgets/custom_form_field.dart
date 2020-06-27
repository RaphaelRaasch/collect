import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final height;
  final ph;
  final hint;
  final prefix;
  final suffix;
  final fs;
  final obscure;
  final ktype;
  final onChanged;

  const CustomFormField(
      {Key key,
      this.height,
      this.ph,
      this.hint,
      this.prefix,
      this.suffix,
      this.fs,
      this.obscure,
      this.ktype,
      this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ph),
      height: height,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: Colors.black26,
              offset: Offset(2, 2),
            )
          ]),
      child: Center(
        child: TextFormField(
          onChanged: onChanged,
          keyboardType: ktype,
          obscureText: obscure,
          style: TextStyle(fontSize: fs),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: prefix,
            suffix: suffix,
          ),
        ),
      ),
    );
  }
}
