import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeContainerForDoctor extends StatelessWidget {
   HomeContainerForDoctor({Key? key}) : super(key: key);
List images =["assets/image1.jpg","assets/image2.jpg","assets/image3.jpg","assets/image4.jpg","assets/image5.jpg",];
  @override
  Widget build(BuildContext context) {
    return Container(decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight:Radius.circular(30.r) ,topLeft:Radius.circular(30.r) )) ,
      height: 335.h,
      width: 428.w,child: Column(
        children: [
          SizedBox(height: 21.h,),
           Center(child: Text("${images.length>5?5:images.length}/5",style: TextStyle(color: Color(0xff4D96FF)),)),
          SizedBox(height: 52.h,),
          SizedBox(width:428.w ,height:144.h,
            child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, index) => Padding(
              padding:  EdgeInsetsDirectional.symmetric(horizontal: 12.w),
              child: GestureDetector(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      body: Center(
                        child: Hero(
                          tag: images[index],
                          child: Container(
                            child: Image.asset(images[index], fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },child: Container(width:144.w ,height:144.h,decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(15.r))), child: ClipRRect(clipBehavior: Clip.antiAliasWithSaveLayer,borderRadius: BorderRadius.all(Radius.circular(15.r)), child: Hero(tag:images[index] , child: Image.asset(images[index],fit: BoxFit.fill)),))),
            ),itemCount: images.length>5?5:images.length),
          ),
        ],
      ) ,);
  }
}
