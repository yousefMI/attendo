import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatefulWidget {
   MyButton({Key? key,required this.buttonColor,this.isScan=false,required this.buttonText,required this.textColor, this.screen=const Text("")}) : super(key: key);
int buttonColor,textColor;
String buttonText;
Widget screen;
bool isScan;


  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 40.h,
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(widget.buttonColor)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius:
              BorderRadiusDirectional.circular(15.r),
            ),
          ),
        ),
        onPressed: () {

           Navigator.push(context, MaterialPageRoute(builder: (context) => widget.screen,));

        },
        child: Center(
          child: Text(widget.buttonText,style: TextStyle(color: Color(widget.textColor),fontSize: 16)),
        ),
      ),
    );
  }
}
