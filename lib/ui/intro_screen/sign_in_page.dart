import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/configs/images.dart';
import 'package:todo_app/ui/app_theme.dart';
import 'package:todo_app/ui/button_custome.dart';
import 'package:todo_app/ui/textfield_content.dart';

import '../log_in.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppTheme(),
              ],
            ),
            const Center(
              child: Text(
                'Welcome Back!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
            ),
            SvgPicture.asset(AppImages.imgSlice2),
            SizedBox(height: 33.0,),
            TextFieldContent('Enter your email'),
            SizedBox(height: 21.0,),
            TextFieldContent('Enter password'),
            SizedBox(height: 25,),
            Text('Forgot password'),
            SizedBox(height: 24.0,),
            ButtonCustome(Login(), 'Sign In')
          ],
        ),
      ),
    );
  }
}
