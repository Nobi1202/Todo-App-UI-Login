import 'package:flutter/material.dart';
import 'package:todo_app/ui/button_custome.dart';
import 'package:todo_app/ui/textfield_content.dart';
import 'app_theme.dart';
import 'intro_screen/sign_in_page.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppTheme(),
              ],
            ),
             Text(
              'Welcome Onboard!',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 21.0),
            const Text('Let’s help you meet up your tasks'),
            SizedBox(height: 21.0),
            TextFieldContent('Enter your full name'),
            SizedBox(height: 21.0),
            TextFieldContent('Enter your email'),
            SizedBox(height: 21.0),
            TextFieldContent('Enter your password'),
            SizedBox(height: 21.0),
            TextFieldContent('Confirm password'),
            SizedBox(
              height: 50.0,
            ),
            ButtonCustome(SignInPage(), 'Register'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  ' Sign In',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF50C2C9)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
