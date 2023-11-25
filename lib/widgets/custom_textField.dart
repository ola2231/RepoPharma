import 'package:flutter/material.dart';

import '../help/const.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  IconData? icons;
  CustomTextField({this.hintText, this.icons});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(199),
          borderSide: BorderSide(color: Color(0xffdaa8e5),width: 3.5),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: kFontColor),
       border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.purpleAccent),
        ),
        prefixIcon: Icon(
          icons,
          color: kBaseColor,
          size:   30,
        ),
      ),
    );
  }
}
