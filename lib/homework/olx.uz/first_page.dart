import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_17/homework/olx.uz/second_page.dart';
import 'package:flutter_day_17/homework/olx.uz/third_page.dart';
import 'package:flutter_day_17/homework/widgets/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool isFavorite = false;
  bool isFavorite1 = false;
  final scrollController = ScrollController();


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
                  Icons.menu,
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 350,
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/iphone15_img2.jpg'),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    bottom: 30,
                    child: Container(
                      width: 30.w,
                      height: 20.h,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(4),
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
                  Positioned(
                    top: 255,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "iPhone 15 Pro Max 256GB",
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite ? Icons.favorite : Icons.favorite_border,
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
                            Text("Tashkent, Uchtepa")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            110.height(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/macbook_img.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    bottom: 30,
                    child: Container(
                      width: 30.w,
                      height: 20.h,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(4),
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
                  Positioned(
                    top: 255,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Macbook Pro M3",
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFavorite1 = !isFavorite1;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite1 ? Icons.favorite : Icons.favorite_border,
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
                            Text("Tashkent, Yunusobod")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            110.height(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/bicycle_img.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    bottom: 30,
                    child: Container(
                      width: 30.w,
                      height: 20.h,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(4),
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
                  Positioned(
                    top: 255,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bicycle",
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFavorite1 = !isFavorite1;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite1 ? Icons.favorite : Icons.favorite_border,
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
                              "\$279",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            10.height(),
                            Text("Andijan, Angren")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            110.height(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/malibu_img1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    bottom: 30,
                    child: Container(
                      width: 30.w,
                      height: 20.h,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(4),
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
                  Positioned(
                    top: 255,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Malibu 2022",
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFavorite1 = !isFavorite1;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite1 ? Icons.favorite : Icons.favorite_border,
                                    color: isFavorite1 ? Colors.red : null,
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
                            Text("Toshket, Sergeli")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
