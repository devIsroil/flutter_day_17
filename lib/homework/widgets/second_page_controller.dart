import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_17/homework/utils/widgets/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondPageController extends StatefulWidget {
  String image;
  String product;
  String price;
  String location;
  String time;

  SecondPageController({super.key,required this.image,required this.product,required this.price,required this.location,required this.time});

  @override
  State<SecondPageController> createState() => _SecondPageControllerState();
}

class _SecondPageControllerState extends State<SecondPageController> {
  bool isFavorite = false;
  bool isFavorite1 = false;
  bool isFavorite2 = false;
  bool isFavorite3 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            width: 162,
            height: double.infinity,
            decoration:  BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
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
                    widget.product,
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
               Text(
                widget.location,
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Text(widget.time),
            ],
          ),
        ],
      ),
    );
  }
}
