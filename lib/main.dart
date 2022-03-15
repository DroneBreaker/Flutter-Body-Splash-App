import 'package:body_splash/pages/detail.dart';
import 'package:body_splash/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const HomePage()),
        GetPage(name: "/detail", page: () => const DetailPage())
      ],
      // home: const HomePage(),
    );
  }
}
