import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/configs/colors.dart';
import 'package:todo_app/configs/images.dart';
import 'package:todo_app/ui/components/text/text_normal.dart';
import 'dart:math';

import '../app_theme.dart';
import '../button_custome.dart';
import '../register_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTheme(),
          Interface(),
        ],
      ),
    );
  }
}

class Interface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 59,
              right: 100.44,
              left: 102.0,
            ),
            child: SvgPicture.asset(
              AppImages.imgIntro,
            ),
          ),
          SizedBox(height: 45),
          Text(
            'Get thing done with TODO',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              fontSize: 18,
            ),
          ),
          SizedBox(height: 36),
          Text(
            'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Interdum\n dictum tempus, interdum at dignissim\n metus. Ultricies sed nunc',
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 36),
          ButtonCustome(RegisterPage(),'GET STARTED'),
        ],
      ),
    );
  }
}

