import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_17/homework/olx.uz/first_page.dart';
import 'package:flutter_day_17/homework/olx.uz/second_page.dart';
import 'package:flutter_day_17/homework/olx.uz/third_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          //home: HomePage(),
          home: PageView(children: [
            FirstPage(),
            SecondPage(),
            ThirdPage()
          ],),
        );
      },
    );
  }
}
