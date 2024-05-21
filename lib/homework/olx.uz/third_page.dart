import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_17/homework/olx.uz/second_page.dart';
import 'package:flutter_day_17/homework/utils/widgets/extension.dart';
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
  const ThirdPage({Key? key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final TextEditingController _searchController = TextEditingController();

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
      date: 'May 17, 2024',
    ),
    Item(
      imagePath: 'assets/images/image_olx7.jpg',
      title: 'Bengalskiy cat',
      price: '\$779',
      location: 'Tashkent, Chilonzor',
      date: 'May 20, 2024',
    ),
    Item(
      imagePath: 'assets/images/image_olx1.jpg',
      title: 'Gentra 2019',
      price: '\$13 257',
      location: 'Tashkent, Chilonzor',
      date: 'May 19, 2024',
    ),
    Item(
      imagePath: 'assets/images/image_olx2.jpg',
      title: 'Chemodan',
      price: '\$60',
      location: 'Tashkent, Yashnobod',
      date: 'May 22, 2024',
    ),
    Item(
      imagePath: 'assets/images/image_olx3.jpg',
      title: 'Apple MacBook',
      price: '\$1399',
      location: "Tashkent, Mirzo Ulug'bek",
      date: 'May 18, 2024',
    ),
    Item(
      imagePath: 'assets/images/image_olx4.jpg',
      title: 'Kolyaska lux',
      price: '\$250',
      location: 'Samarkand',
      date: 'May 21, 2024',
    ),
    Item(
      imagePath: 'assets/images/image_olx6.jpg',
      title: 'Turetskiy sofa',
      price: '\$1100',
      location: 'Tashkent, Mirabad',
      date: 'May 17, 2024',
    ),
  ];

  List<Item> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = items;
    _searchController.addListener(_filterItems);
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterItems);
    _searchController.dispose();
    super.dispose();
  }

  void _filterItems() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      filteredItems = items.where((item) {
        return item.title.toLowerCase().contains(query);
      }).toList();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      appBar: AppBar(
        leading: null,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Icon(CupertinoIcons.arrow_up_arrow_down),
            const SizedBox(width: 15),
            Expanded(
              child: TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                ),
              ),
            ),
            PopupMenuButton(
              icon: const Icon(
                CupertinoIcons.qrcode,
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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0 / 1.8,
        ),
        itemCount: filteredItems.length,
        itemBuilder: (BuildContext context, int index) {
          return buildItem(filteredItems[index]);
        },
      ),
      floatingActionButton: SizedBox(
        width: 150,
        height: 40,
        child: ZoomTapAnimation(
          child: FloatingActionButton(
            backgroundColor: Colors.blue,
            shape: const RoundedRectangleBorder(),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                10.width(),
                const Text("Save search", style: TextStyle(color: Colors.white, fontSize: 16),),
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
                child: Icon(Icons.home_filled, color: Colors.black,),
              ),
              label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.black,),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, color: Colors.black,),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble, color: Colors.black,),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person, color: Colors.black,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildItem(Item item) {
    return Container(
      margin: const EdgeInsets.all(8.0),
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
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.title,
                      style: const TextStyle(
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
                Visibility(
                  visible: false,
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
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
                ),
                10.height(),
                Text(
                  item.price,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.location,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  item.date,
                  style: const TextStyle(
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
