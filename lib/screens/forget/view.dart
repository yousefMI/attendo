import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moharam/screens/forget/components/contanier.dart';


class ForgetScreen extends StatelessWidget {
   const ForgetScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 30.h,),
          
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child:
                  FloatingActionButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      backgroundColor: Colors.white,
                      elevation: 3,
                      mini: true,
                      child: const Center(
                          child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.black,
                        size: 25,
                      ))),
            ),
          ),
          Padding(
            padding:  EdgeInsetsDirectional.symmetric(horizontal: 20.w),
            child: Image.asset("assets/image 1.png"),
          ),
       ForgetContainer(),
        ]),
      ),
    );
  }
}
