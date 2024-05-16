import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_17/homework/olx.uz/second_page.dart';
import 'package:flutter_day_17/homework/olx.uz/third_page.dart';
import 'package:flutter_day_17/homework/widgets/extension.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'first_page.dart';


class Item {
  final String imagePath;
  final String title;
  final String price;
  final String location;
  final String date;
  bool isFavorite;

  Item({
    required this.imagePath,
    required this.title,
    required this.price,
    required this.location,
    required this.date,
    this.isFavorite = false,
  });
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool isFavorite = false;
  bool isFavorite1 = false;
  bool isFavorite2 = false;
  bool isFavorite3 = false;

  List<Item> items = [
    Item(
      imagePath: 'assets/images/iphone15_img2.jpg',
      title: 'iPhone 15 Pro...',
      price: '\$1199',
      location: 'Tashkent, Uchtepa',
      date: 'Today at 12:27',
    ),
    Item(
      imagePath: 'assets/images/macbook_img.jpg',
      title: 'MacBook Pro...',
      price: '\$2499',
      location: 'Tashkent, Yunusobod',
      date: 'May 13, 2024',
    ),
    Item(
      imagePath: 'assets/images/bicycle_img1.jpg',
      title: 'Bicycle',
      price: '\$279',
      location: 'Andijan, Angren',
      date: 'May 16, 2024',
    ),
    Item(
      imagePath: 'assets/images/malibu_img1.jpg',
      title: 'Malibu 2022',
      price: '\$25 329',
      location: 'Tashkent, Sergili',
      date: 'May 9, 2024',
    ),
  ];

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
                icon: Transform.rotate(
                  angle: 77,
                  child: Icon(
                    CupertinoIcons.list_bullet_below_rectangle,
                    size: 30,
                    color: Colors.black,
                  ),
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0/1.8,

        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return buildItem(items[index]);
        },
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

  Widget buildItem(Item item) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 170,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(item.imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          item.isFavorite = !item.isFavorite;
                        });
                      },
                      child: Icon(
                        item.isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: item.isFavorite ? Colors.red : null,
                      ),
                    ),
                  ],
                ),
                8.height(),
                Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text(
                      "New",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                10.height(),
                Text(
                  item.price,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  item.location,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  item.date,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


