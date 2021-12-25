import 'package:flutter/material.dart';

class ButtonCustome extends StatelessWidget {
  ButtonCustome(this.route, this.insideText);
  Widget route;
  String insideText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return route;
            },
          ),
        );
      },
      child: Container(
        child: Center(
          child: Text(
            insideText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        height: 62.0,
        width: 352,
        color: Color(0xFF50C2C9),
      ),
    );
  }
}
