import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/configs/colors.dart';
import 'package:todo_app/ui/components/button/button_custom.dart';
import 'package:todo_app/ui/components/text/text_bold.dart';
class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.dThirdColor,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.wPrimaryColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24.h),
            topLeft: Radius.circular(24.h),
          )
        ),
        child: Column(
          children: [
            TextBold(title: 'Add task', colors: AppColors.iconColor, size: 24.sp, height: 1.16.h),
            const TextField(
              textAlign: TextAlign.center,
              autofocus: true,
            ),
            SizedBox(height: 30.h,),
            ButtonCustom(insideText: 'ADD', onTap: () {  },),
          ],
        ),
      ),
    );
  }
}
