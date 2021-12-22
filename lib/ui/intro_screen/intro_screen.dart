import 'package:flutter/material.dart';
import 'package:todo_app/configs/colors.dart';
import 'package:todo_app/ui/components/text/text_normal.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextNormal(
          title: "Hello Cương Nguyên",
          colors: AppColors.primaryColor,
        ),
      ),
    );
  }
}
