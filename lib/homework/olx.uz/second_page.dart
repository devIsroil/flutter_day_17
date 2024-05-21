import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_day_17/homework/olx.uz/third_page.dart';
import 'package:flutter_day_17/homework/utils/widgets/extension.dart';
import 'package:flutter_day_17/homework/widgets/extension.dart';
import 'package:flutter_day_17/homework/widgets/second_page_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'first_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> products = [
    {
      "image": "assets/images/iphone15_img2.jpg",
      "product": "iPhone 15 Pro",
      "price": "\$1199",
      "location": "Tashkent, Uchtepa",
    },
    {
      "image": "assets/images/macbook_img.jpg",
      "product": "MacBook Pro",
      "price": "\$1499",
      "location": "Tashkent, Yunusobod",
    },
    {
      "image": "assets/images/bicycle_img1.jpg",
      "product": "Bicycle",
      "price": "\$279",
      "location": "Andijan, Angren",
    },
    {
      "image": "assets/images/malibu_img1.jpg",
      "product": "Malibu 2022",
      "price": "\$25 329",
      "location": "Tashkent, Sergili",
    },
    {
      "image": "assets/images/image_olx7.jpg",
      "product": "Bengalskiy cat",
      "price": "\$779",
      "location": "Tashkent, Chilonzor",
    },
    {
      "image": "assets/images/image_olx1.jpg",
      "product": "Gentra 2019",
      "price": "\$13 257",
      "location": "Tashkent, Chilonzor",
    },
    {
      "image": "assets/images/image_olx2.jpg",
      "product": "Chemodan",
      "price": "\$60",
      "location": "Tashkent, Yashnobod",
    },
    {
      "image": "assets/images/image_olx3.jpg",
      "product": "Apple MacBook",
      "price": "\$1399",
      "location": "Tashkent, Mirzo Ulug'bek",
    },
    {
      "image": "assets/images/image_olx4.jpg",
      "product": "Kolyaska lux",
      "price": "\$250",
      "location": "Samarkand",
    },
    {
      "image": "assets/images/image_olx6.jpg",
      "product": "Turetskiy sofa",
      "price": "\$1100",
      "location": "Tashkent, Mirabad",
    },
  ];
  List<Map<String, String>> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = products;
    _searchController.addListener(_filterProducts);
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterProducts);
    _searchController.dispose();
    super.dispose();
  }

  void _filterProducts() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      filteredProducts = products.where((product) {
        return product['product']!.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(CupertinoIcons.arrow_up_arrow_down),
              const SizedBox(width: 15),
              Expanded(
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                  ),
                ),
              ),
              PopupMenuButton(
                icon: const Icon(
                  Icons.format_list_bulleted,
                  size: 30,
                  color: Colors.black,
                ),
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      child: const Text('First Page'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FirstPage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: const Text('Second Page'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SecondPage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: const Text('Third Page'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ThirdPage()),
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
            children: filteredProducts.map((product) {
              return SecondPageController(
                image: product["image"]!,
                product: product["product"]!,
                price: product["price"]!,
                location: product["location"]!,
                time: '', // Add your time property here
              );
            }).toList(),
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
                Text(
                  "Save search",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 14),
              child: Icon(Icons.home_filled, color: Colors.black),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, color: Colors.black),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble, color: Colors.black),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person, color: Colors.black),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
