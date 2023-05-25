import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moharam/screens/forget/view.dart';
import 'package:moharam/screens/share/my_input.dart';
import 'package:moharam/screens/share/my_nav_bar.dart';

class LoginContainer extends StatelessWidget {
  LoginContainer({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late String name, id, type, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60.r), topRight: Radius.circular(60.r))),
      child: Padding(
        padding: EdgeInsetsDirectional.only(
            top: 23.h, start: 10.w, end: 10.w, bottom: 28.h),
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
              padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
              child: MyInput(
                  myController: emailController,
                  hintText: "Email",
                  isEmail: true),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
              child: MyInput(
                  myController: passwordController,
                  hintText: "Password",
                  isPassword: true),
            ),
            Row(
              children: [
                const Spacer(),
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
                  child: TextButton(
                      onPressed: () async {
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
              padding: EdgeInsetsDirectional.symmetric(horizontal: 34.w),
              child: SizedBox(
                height: 40.h,
                child: ElevatedButton(
                    child: Center(
                      child: Text("LOGIN",
                          style: TextStyle(
                              color: Color(0xffffffff), fontSize: 16)),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xffFFD93D)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(15.r),
                        ),
                      ),
                    ),
                    onPressed: () async {
                      print("==================================");
                      print(emailController.text);
                      print("==================================");
                      print(passwordController.text);
                      print("==================================");
                      if (emailController.text == "319200081" &&
                          passwordController.text == "987654321") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyNavigatorBottomBar(
                                        name: "Hossam Moharam",
                                        image:"assets/hossam.png",
                                        type: "Student",
                                        id: "319200081"),
                                  ));
                            }else if (emailController.text == "12345" &&
                          passwordController.text == "123456789") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => MyNavigatorBottomBar(
                            name: "Mahmod Rehan Almaz",
                            image:"assets/Doctor.jpg",
                            type: "Doctor",
                            id: "12345")));
                            }
                      
                          } ),



              ),
            ),
          ],
        ),
      ),
    );
  }
}
