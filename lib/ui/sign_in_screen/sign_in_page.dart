import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/configs/images.dart';
import 'package:todo_app/ui/components/app_theme/app_theme.dart';
import 'package:todo_app/ui/components/text_input/text_input.dart';


class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
            // TextInput('Enter your email'),
            // SizedBox(height: 21.0,),
            // TextInput('Enter password'),
            SizedBox(height: 25,),
            Text('Forgot password'),
            SizedBox(height: 24.0,),
            // ButtonCustom(Login(), 'Sign In')
          ],
        ),
      ),
    );
  }
}
