import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_17/homework/utils/widgets/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstPageController extends StatefulWidget {
  String image;
  String product;
  String price;
  String location;
  FirstPageController({super.key,required this.image,required this.product,required this.price,required this.location});
  @override
  State<FirstPageController> createState() => _FirstPageControllerState();
}

class _FirstPageControllerState extends State<FirstPageController> {


  bool isFavorite = false;
  bool isFavorite1 = false;
  bool isFavorite2 = false;
  bool isFavorite3 = false;
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 350,
            height: 280,
            decoration: BoxDecoration(
              image:  DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.fill,
              ),
              //borderRadius: BorderRadius.circular(20),
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
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          widget.product,
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
                      child: const Center(
                        child: Text("New"),
                      ),
                    ),
                    10.height(),
                    Text(
                      widget.price,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    10.height(),
                     Text(widget.location)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
