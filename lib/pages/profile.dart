// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(children: [
          Positioned(
            top: 80,
            left: 45,
            child: Container(
              height: 300,
              width: 300,
              child: const CircleAvatar(
                backgroundColor: Colors.redAccent,
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 10,
            child: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_ios)),
          ),
        ]),
      ),
    );
  }
}
