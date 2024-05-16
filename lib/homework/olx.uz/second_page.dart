import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_17/homework/olx.uz/third_page.dart';
import 'package:flutter_day_17/homework/widgets/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'first_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool isFavorite = false;
  bool isFavorite1 = false;
  bool isFavorite2 = false;
  bool isFavorite3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      appBar: AppBar(
        leading: null,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(CupertinoIcons.arrow_up_arrow_down),
              SizedBox(width: 15),
              PopupMenuButton(
                icon: Icon(
                  CupertinoIcons.list_dash,
                  size: 30,
                  color: Colors.black,
                ),
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      child: Text('First Page'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FirstPage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text('Second Page'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondPage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text('Third Page'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ThirdPage()),
                        );
                      },
                    ),
                  ];
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              30.height(),
              Container(
                width: double.infinity,
                height: 230,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: 162,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/iphone15_img2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        width: 30.w,
                        height: 20.h,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Center(
                          child: Text(
                            "Top",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    10.width(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "iPhone 15 Pro...",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            10.width(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                              child: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isFavorite ? Colors.red : null,
                              ),
                            ),
                          ],
                        ),
                        10.height(),
                        Container(
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                            child: Text("New"),
                          ),
                        ),
                        10.height(),
                        Text(
                          "\$1199",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        10.height(),
                        Text(
                          "Tashkent, Uchtepa",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text("Today at 12:27"),
                      ],
                    ),
                  ],
                ),
              ),
              20.height(),
              Container(
                width: double.infinity,
                height: 230,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: 162,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/macbook_img.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        width: 30.w,
                        height: 20.h,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Center(
                          child: Text(
                            "Top",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    10.width(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "MacBook Pro... ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            10.width(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFavorite1 = !isFavorite1;
                                });
                              },
                              child: Icon(
                                isFavorite1
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isFavorite1 ? Colors.red : null,
                              ),
                            ),
                          ],
                        ),
                        10.height(),
                        Container(
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                            child: Text("New"),
                          ),
                        ),
                        10.height(),
                        Text(
                          "\$2499",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        10.height(),
                        Text(
                          "Tashkent, Yunusobod",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text("May 13, 2024"),
                      ],
                    ),
                  ],
                ),
              ),
              20.height(),
              Container(
                width: double.infinity,
                height: 230,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: 162,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/bicycle_img1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        width: 30.w,
                        height: 20.h,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Center(
                          child: Text(
                            "Top",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    10.width(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Bicycle               ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            10.width(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFavorite2 = !isFavorite2;
                                });
                              },
                              child: Icon(
                                isFavorite2
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isFavorite2 ? Colors.red : null,
                              ),
                            ),
                          ],
                        ),
                        10.height(),
                        Container(
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                            child: Text("New"),
                          ),
                        ),
                        10.height(),
                        Text(
                          "\$279",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        10.height(),
                        Text(
                          "Andijan, Angren",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text("May 16, 2024"),
                      ],
                    ),
                  ],
                ),
              ),
              20.height(),
              Container(
                width: double.infinity,
                height: 230,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: 162,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/malibu_img1.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Container(
                        width: 30.w,
                        height: 20.h,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Center(
                          child: Text(
                            "Top",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    10.width(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Malibu 2022      ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            10.width(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFavorite3 = !isFavorite3;
                                });
                              },
                              child: Icon(
                                isFavorite3
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isFavorite3 ? Colors.red : null,
                              ),
                            ),
                          ],
                        ),
                        10.height(),
                        Text(
                          "\$25 329",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        10.height(),
                        Text(
                          "Tashkent, Sergili",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text("May 9, 2024"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 150,
        height: 40,
        child: ZoomTapAnimation(
          child: FloatingActionButton(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                10.width(),
                Text("Save search",style: TextStyle(color: Colors.white,fontSize: 16),),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Icon(Icons.home_filled,color: Colors.black,),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,color: Colors.black,),
            label: 'Favorites',),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline,color: Colors.black,),
            label: 'Create',),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble,color: Colors.black,),
              label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person,color: Colors.black,),
              label: 'Profile'),
        ],
      ),
    );
  }
}
