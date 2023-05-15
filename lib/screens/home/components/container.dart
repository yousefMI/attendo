import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:im_stepper/stepper.dart';

class HomeContainerForStudent extends StatefulWidget {
  const HomeContainerForStudent({Key? key}) : super(key: key);

  @override
  State<HomeContainerForStudent> createState() => _HomeContainerForStudentState();
}

class _HomeContainerForStudentState extends State<HomeContainerForStudent> {
  int activeStep = 0;
  int upperBound = 6;

  @override
  Widget build(BuildContext context) {
    return Container(decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight:Radius.circular(30.r) ,topLeft:Radius.circular(30.r) )) ,
      height: 335.h,
      width: 428.w,
      child: Center(
        child: ImageStepper(scrollingDisabled: true,lineLength: 20, lineColor: const Color(0xff7F827F),stepRadius: 28.r,enableNextPreviousButtons: false,
          images: [
          AssetImage(activeStep>=0?"assets/Component 2.png":"assets/[removal.ai]_png.png"),
          AssetImage(activeStep>=1?"assets/Component 2.png":"assets/[removal.ai]_png.png"),
          AssetImage(activeStep>=2?"assets/Component 2.png":"assets/[removal.ai]_png.png"),
          AssetImage(activeStep>=3?"assets/Component 2.png":"assets/[removal.ai]_png.png"),
          AssetImage(activeStep>=4?"assets/Component 2.png":"assets/[removal.ai]_png.png"),
          // AssetImage(activeStep>4?"assets/Component 2.png":"assets/Vector.png"),
          //AssetImage("assets/Component 2.png"),
         // AssetImage("assets/Component 2.png"),
        ],
          activeStep: activeStep,

          // This ensures step-tapping updates the activeStep.
          onStepReached: (index) {
            setState(() {
              activeStep = index;

            });
          },
        ),
      ),

    );
  }
}

