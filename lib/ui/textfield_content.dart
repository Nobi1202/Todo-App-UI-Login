import 'package:flutter/material.dart';

class TextFieldContent extends StatelessWidget {
  TextFieldContent(this.content);
  String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 27.0, right: 23.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          constraints: BoxConstraints(maxHeight: 51.0,maxWidth: 325),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.0),
          ),
          labelText: content,
        ),
      ),
    );
  }
}
