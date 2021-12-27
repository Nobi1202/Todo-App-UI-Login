import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/configs/colors.dart';
import 'package:todo_app/ui/components/text/text_normal.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key,}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  late bool isDone ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 21.h, right: 61.h, bottom: 18.h),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(
                    () {
                  isDone = !isDone;
                },
              );
            },

            child: Container(
              decoration: BoxDecoration(
                color: isDone ? AppColors.aThirdColor : AppColors.wPrimaryColor,
                border: Border.all(color: AppColors.bPrimaryColor),
              ),
              width: 17.w,
              height: 17.h,
            ),
          ),
          SizedBox(
            width: 11.w,
          ),
           const TextNormal(
            title: 'This is a task',
          )
        ],
      ),
    );
  }
}