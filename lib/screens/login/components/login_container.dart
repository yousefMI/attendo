import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moharam/screens/forget/view.dart';
import 'package:moharam/screens/share/my_button.dart';
import 'package:moharam/screens/share/my_input.dart';
import 'package:moharam/screens/share/my_nav_bar.dart';

class LoginContainer extends StatelessWidget {
   LoginContainer({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60.r),
              topRight: Radius.circular(60.r))),
      child: Padding(
        padding: EdgeInsetsDirectional.only(
            top: 23.h,
            start: 10.w,
            end: 10.w,
            bottom: 28.h
        ),
        child: Column(
          children: [
            const Center(
                child: Text(
                  "welcome",
                  style: TextStyle(color: Colors.black, fontSize: 39),
                )),
            SizedBox(height: 19.h),
            const Center(
                child: Text(
                  "Login to continue",
                  style: TextStyle(color: Colors.black38, fontSize: 19),
                )),
            SizedBox(
              height: 73.h,
            ),
            Padding(
              padding:
              EdgeInsetsDirectional.symmetric(horizontal: 10.w),
              child: MyInput(
                  myController: emailController,
                  hintText: "Email",
                  isEmail: true),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding:
              EdgeInsetsDirectional.symmetric(horizontal: 10.w),
              child: MyInput(
                  myController: passwordController,
                  hintText: "Password",
                  isPassword: true),
            ),
            Row(
              children: [
                const Spacer(),
                Padding(
                  padding:
                  EdgeInsetsDirectional.symmetric(horizontal: 10.w),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgetScreen(),
                            ));
                      },
                      child: const Text("Forget Password?")),
                ),
              ],
            ),
            SizedBox(height: 39.h),
            Padding(
              padding:
              EdgeInsetsDirectional.symmetric(horizontal: 34.w),
              child: MyButton(
                  buttonColor: 0xffFFD93D,
                  buttonText: "LOGIN",
                  textColor: 0xffffffff,
                  screen: const MyNavigatorBottomBar()),
            ),
          ],
        ),
      ),
    );
  }
}
