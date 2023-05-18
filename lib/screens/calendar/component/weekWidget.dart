import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeekDesign extends StatelessWidget {
  WeekDesign({Key? key, required this.day}) : super(key: key);
  String day;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         const Text("First week",style: TextStyle(color: Color(0xff4D96FF),fontSize: 18,fontWeight: FontWeight.bold)),
        // SizedBox(height: 25.h,),
        // WeekDesign(day:"Saturday" ),
        // WeekDesign(day:"Monday" ),
        // WeekDesign(day:"Thursday" ),
        SizedBox(height: 27.h,),
        Row(
          children: [
            Text(day,style: const TextStyle(fontSize: 18,color: Colors.black)),
            const Spacer(),
            const Text("13/3/2023"),
          ],
        ),
        SizedBox(
          height: 25.h,
        ),
        SizedBox(
          height: 64.h,
          width: 428.w,
          child: ListView.builder(scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: Container(
                  height: 64.h,
                  width: 131.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7.r)),
                      color: const Color(0xff4D96FF)),child: const Center(child: Text("Lecture",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),))),
            ),itemCount: 2,
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
      ],
    );
  }
}
