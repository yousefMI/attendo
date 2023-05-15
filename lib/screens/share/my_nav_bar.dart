import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moharam/screens/calendar/view.dart';
import 'package:moharam/screens/home/view.dart';
import 'package:moharam/screens/home_1/view.dart';


class MyNavigatorBottomBar extends StatefulWidget {
  const MyNavigatorBottomBar({
    Key? key,
  }) : super(key: key);

  //final String title;

  @override
  _MyNavigatorBottomBarState createState() => _MyNavigatorBottomBarState();
}

class _MyNavigatorBottomBarState extends State<MyNavigatorBottomBar> {
  int _currentIndex = 0;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  final List<Widget> _pages = [
    HomeScreen(),
     CalendarScreen(),
    HomeScreenForStudent(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_currentIndex],
      bottomNavigationBar: Container(color: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.r), topRight: Radius.circular(40.r)),
          child: SizedBox(height:100.h ,
            child: BottomNavigationBar(unselectedFontSize:  0,selectedFontSize: 0,
              backgroundColor: const Color(0xff4D96FF),
              selectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              //backgroundColor: Colors.transparent,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
                print(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined,color: _currentIndex ==0?Colors.white:Colors.white38,size: 35.r,),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(_currentIndex ==1?"assets/calendarselected.png":
                  "assets/calendar-2 1.png",
                    width: 35.w,
                    height: 35.h,
                  ),
                  label: 'Calendar',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset( _currentIndex ==2?"assets/userSelected.png"
                      :  "assets/user-2 1.png",
                    width: 35.w,
                    height: 35.h,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class PageOne extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Page One'),
//     );
//   }
// }


// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//    final PageController controller = PageController();
//     return PageView(
//
//       /// [PageView.scrollDirection] defaults to [Axis.horizontal].
//       /// Use [Axis.vertical] to scroll vertically.
//       controller: controller,
//       children:  <Widget>[
//         FirstScreen(x: controller.initialPage.toInt()),
//        ScondScreen(),
//         Center(
//           child: Text('Third Page'),
//         ),
//       ],
//     );
//
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:moharam/screens/home/first.dart';
// import 'package:moharam/screens/home/second.dart';
//
// class MyNavigatorBar extends StatefulWidget {
//   MyNavigatorBar({Key? key,this.currentIndex =0}) : super(key: key);
// int currentIndex;
//
//   @override
//   State<MyNavigatorBar> createState() => _MyNavigatorBarState();
// }
//
// class _MyNavigatorBarState extends State<MyNavigatorBar> {
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(40.r), topRight: Radius.circular(40.r)),
//       child: BottomNavigationBar(
//         backgroundColor: Color(0xff4D96FF),
//         selectedItemColor: Colors.white,
//         type: BottomNavigationBarType.fixed,
//         //backgroundColor: Colors.transparent,
//         currentIndex: widget.currentIndex,
//         onTap: (index) {
//           setState(() {
//             widget.currentIndex = index;
//           });
//           print(index);
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(widget.currentIndex ==1?"assets/calendarselected.png":
//             "assets/calendar-2 1.png",
//               width: 35.w,
//               height: 35.h,
//             ),
//             label: 'Calendar',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset( widget.currentIndex ==2?"assets/userSelected.png"
//                 :  "assets/user-2 1.png",
//               width: 35.w,
//               height: 35.h,
//             ),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//     // return Container(
//     //   height: 100.h,
//     //   width: 428.w,
//     //   decoration: BoxDecoration(
//     //       borderRadius: BorderRadius.only(
//     //           topLeft: Radius.circular(40.r), topRight: Radius.circular(40.r)),
//     //       color: Color(0xff4D96FF)),
//     //   child: Padding(
//     //     padding: EdgeInsetsDirectional.symmetric(horizontal: 26.w),
//     //     child: Row(children: [
//     //       Expanded(
//     //         child: InkWell(
//     //           onTap: () {
//     //             Navigator.push(
//     //                 context,
//     //                 MaterialPageRoute(
//     //                   builder: (context) => FirstScreen(),
//     //                 ));
//     //           },
//     //           child: Container(
//     //             decoration: BoxDecoration(
//     //                 borderRadius: BorderRadius.all(Radius.circular(13.r)),
//     //                 color: Colors.white),
//     //             height: 45.h,
//     //             width: 90.w,
//     //             child: Center(
//     //               child: Text("Home",
//     //                   style:
//     //                       TextStyle(color: Color(0xff4D96FF), fontSize: 18.sp)),
//     //             ),
//     //           ),
//     //         ),
//     //       ),
//     //       Expanded(
//     //           child: InkWell(
//     //               onTap: () {
//     //                 Navigator.push(
//     //                     context,
//     //                     MaterialPageRoute(
//     //                       builder: (context) => ScondScreen(),
//     //                     ));
//     //               },
//     //               child: Image.asset(
//     //                 "assets/calendar-2 1.png",
//     //                 width: 35.w,
//     //                 height: 35.h,
//     //               ))),
//     //       Expanded(
//     //           child: InkWell(onTap:() {
//     //             Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen(),));
//     //           } ,
//     //             child: Image.asset(
//     //         "assets/user-2 1.png",
//     //         width: 35.w,
//     //         height: 35.h,
//     //       ),
//     //           )),
//     //       Expanded(
//     //           child: SvgPicture.asset(
//     //         "assets/Vector.svg",
//     //         width: 35.w,
//     //         height: 35.h,
//     //       )),
//     //     ]),
//     //   ),
//     // );
//   }
// }
