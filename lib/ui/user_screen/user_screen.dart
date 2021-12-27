import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/configs/colors.dart';
import 'package:todo_app/configs/images.dart';
import 'package:todo_app/ui/add_task_screen/add_task_screen.dart';
import 'package:todo_app/ui/components/app_theme/app_theme.dart';
import 'package:todo_app/ui/components/text/text_bold.dart';
import 'package:todo_app/ui/components/text/text_normal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/ui/list_tasks/tasks.dart';


class UserScreen extends StatefulWidget {

  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cThirdColor,
      body: Column(
        children: [
          Container(
            width: 375,
            height: 307,
            color: AppColors.aThirdColor,
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 133.h,
                        left: 141.h,
                        right: 134.h,
                      ),
                      child: const CircleAvatar(),
                    ),
                    const SizedBox(height: 18),
                    const Padding(
                      padding: EdgeInsets.only(left: 79, right: 73),
                      child: TextBold(
                        title: 'Hello Doan Duc Cuong',
                        colors: AppColors.wPrimaryColor,
                        size: 18,
                        height: 1.16,
                      ),
                    )
                  ],
                ),
                const AppTheme()
              ],
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  left: 244,
                  right: 25,
                ),
                child: TextBold(
                  title: 'Good morning',
                  colors: AppColors.bThirdColor,
                  size: 12.0,
                  height: 1.15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 128, left: 127),
                child: Image.asset(AppImages.imgClock),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 26.h,
                  left: 27.h,
                  right: 251.h,
                  bottom: 20.h,
                ),
                child: TextBold(
                  title: 'Task List',
                  colors: AppColors.bThirdColor,
                  size: 18.sp,
                  height: 1.15.h,
                ),
              ),
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 21.h,
                    right: 31.h,
                  ),
                  width: 323.h,
                  height: 248.h,
                  decoration: BoxDecoration(
                    color: AppColors.wPrimaryColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 26.h, left: 21.h),
                        child: Row(
                          children: [
                            const TextNormal(title: 'Task List'),
                            VerticalDivider(
                              width: 140.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(context: context, builder: (BuildContext context)=>const AddTaskScreen());
                              },
                              child: SvgPicture.asset(
                                AppImages.imgPluscircle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 29.h
                      ),
                      Tasks(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
