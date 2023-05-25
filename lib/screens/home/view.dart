import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moharam/screens/home/components/container.dart';
import 'package:moharam/screens/home_1/components/container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key,required this.type,required this.id,required this.image,required this.name}) : super(key: key);
  List<String> days = ["MO", "TU", "WE", "TH", "FR", "SA", "SU"];
  List<String> clander = ["12", "13", "14", "15", "16", "17", "18"];
  String type ,name,image,id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4D96FF),
      body: Column(children: [
        //SizedBox(height: 491.h),
        SizedBox(height: 72.h),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
          child: Row(
            children: [
               Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                  Text("ID: $id | $type",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ],
              ),
              const Spacer(),
               GestureDetector(onTap: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => Scaffold(
                       body: Center(
                         child: Hero(
                           tag: image,
                           child: Container(
                             child: Image.asset(image),
                           ),
                         ),
                       ),
                     ),
                   ),
                 );
               },child:  Hero(tag: image,child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.r))),child:  ClipRRect(borderRadius: BorderRadius.all(Radius.circular(20.r)),clipBehavior: Clip.antiAliasWithSaveLayer,child: Image.asset(image,height: 93.h, width: 97.w,fit: BoxFit.fill))))),
              // Container(child: ClipRRect(clipBehavior: Clip.antiAliasWithSaveLayer,child: Image.asset(image)),
              //   width: 97.w,
              //   height: 93.h,
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.all(Radius.circular(20.r))),
              // ),
            ],
          ),
        ),
        SizedBox(
          height: 46.h,
        ),
        SizedBox(
          height: 93.h,
          width: 428.w,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 8.w),
              child: Container(
                  height: 93.h,
                  width: 61.w,
                  decoration: BoxDecoration(
                      color: index == 3 ? Colors.white : const Color(0xff4D96FF),
                      borderRadius: BorderRadius.all(Radius.circular(20.r))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${days[index]}\n\n${clander[index]}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              color: index == 3
                                  ? const Color(0xff4D96FF)
                                  : Colors.white)),
                    ],
                  )),
            ),
            itemCount: 7,
          ),
        ),
        SizedBox(
          height: 64.h,
        ),
        SizedBox(
          height: 93.h,
          width: 428,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
              child: Container(
                  height: 93.h,
                  width: 106.w,
                  decoration: BoxDecoration(
                      color: index == 1 ? Colors.white : const Color(0x4DFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(20.r))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("SOFTWARE\nANALYSIS\n\n9:00 am",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, color: Color(0xff4D96FF))),
                    ],
                  )),
            ),
            itemCount: 5,
          ),
        ),
        SizedBox(
          height: 42.h,
        ),
        //Expanded(child: Container(color: Colors.white,))
         Expanded(child:type=='Doctor'? HomeContainerForDoctor():HomeContainerForStudent()),
      ]),
    );
  }
}