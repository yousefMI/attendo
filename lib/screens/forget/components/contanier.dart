import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moharam/screens/share/my_button.dart';
import 'package:moharam/screens/share/my_input.dart';

class ForgetContainer extends StatelessWidget {
   ForgetContainer({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return    Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(80.r), topRight: Radius.circular(80.r))),
      child: Padding(
        padding:  EdgeInsetsDirectional.symmetric(vertical: 17.h),
        child: Column(
          children: [
            Center(
                child: Text(
                  "Reset Password",
                  style: TextStyle(color: Colors.black,fontSize: 30.sp),
                )),
            SizedBox(height: 100.h),
            Padding(
              padding:  EdgeInsetsDirectional.symmetric(horizontal: 20.w),
              child: MyInput(myController:emailController , hintText: "please enter your email",isEmail: true,),
            ),
            SizedBox(height: 75.h,),
            Padding(
              padding:  EdgeInsetsDirectional.symmetric(horizontal: 34.w),
              child: MyButton(buttonColor:  0xffFFD93D, buttonText: "Reset", textColor: 0xffffffff),
            ),
            SizedBox(height: 34.h,),
          ],
        ),
      ),
    );
  }
}
