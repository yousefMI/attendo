import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeContainerForDoctor extends StatelessWidget {
  const HomeContainerForDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight:Radius.circular(30.r) ,topLeft:Radius.circular(30.r) )) ,
      height: 335.h,
      width: 428.w,child: Column(
        children: [
          SizedBox(height: 21.h,),
          const Center(child: Text("1/5",style: TextStyle(color: Color(0xff4D96FF)),)),
          SizedBox(height: 52.h,),
          SizedBox(width:428.w ,height:144.h,
            child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, index) => Padding(
              padding:  EdgeInsetsDirectional.symmetric(horizontal: 12.w),
              child: Container(width:144.w ,height:144.h,decoration: BoxDecoration(color:const Color(0xffD9D9D9) ,borderRadius: BorderRadius.all(Radius.circular(15.r))), ),
            ),itemCount: 5),
          ),
        ],
      ) ,);
  }
}
