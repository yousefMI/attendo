import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moharam/screens/calendar/component/weekWidget.dart';

class CalendarScreen extends StatelessWidget {
   CalendarScreen({Key? key}) : super(key: key);
List week =["First","Second"];
List day =["Saturday","Monday","Thursday"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsetsDirectional.symmetric(horizontal: 34.w),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            SizedBox(height:101.h,),
            const Text("First week",style: TextStyle(color: Color(0xff4D96FF),fontSize: 18,fontWeight: FontWeight.bold)),
            SizedBox(height: 25.h,),
            WeekDesign(day:"Saturday" ),
            WeekDesign(day:"Monday" ),
            WeekDesign(day:"Thursday" ),
            SizedBox(height: 27.h,),
            const Text("Second week",style: TextStyle(color: Color(0xff4D96FF),fontSize: 18,fontWeight: FontWeight.bold)),
            SizedBox(height: 25.h,),
            WeekDesign(day:"Saturday" ),
            WeekDesign(day:"Monday" ),
            WeekDesign(day:"Thursday" ),
          ]),
        ),
      ),
    );
  }
}
