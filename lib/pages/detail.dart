import 'package:body_splash/widgets/app-text.dart';
import 'package:body_splash/widgets/appLargeText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/jc.jpg"), fit: BoxFit.cover),
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
            Positioned(
              top: 320,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  color: Color(0xFFC5E5F3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "JC",
                          color: Colors.black.withOpacity(0.8),
                        ),
                        AppLargeText(
                          text: "\$399",
                          color: Colors.blueAccent,
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    AppText(
                        text:
                            "This perfume is embodied with sweet fragrance and scent. It was produced to last longer you and attracting people around you",
                        color: Colors.grey),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed("/");
                          },
                          child: const Text("Add To Cart"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed("/");
                          },
                          child: const Text("Buy Now"),
                        )
                      ],
                    ),

                    // Row(
                    //   children: [
                    //     // ignore: prefer_const_constructors
                    //     Icon(
                    //       Icons.location_on,
                    //       color: Colors.black54,
                    //     ),
                    //     const SizedBox(width: 5),
                    //     AppText(
                    //         text: detail.place.location,
                    //         color: Colors.grey.withOpacity(0.6)),
                    //   ],
                    // ),
                    // const SizedBox(height: 10),
                    // Row(
                    //   children: [
                    //     Wrap(children: [
                    //       ...List.generate(
                    //           5,
                    //           (index) => Icon(
                    //                 Icons.star,
                    //                 color: index < detail.place.stars
                    //                     ? Colors.orangeAccent
                    //                     : Colors.grey,
                    //               )),
                    //     ]),
                    //     const SizedBox(width: 5),
                    //     AppText(
                    //       text: "(5.0)",
                    //       color: Colors.grey,
                    //     )
                    //   ],
                    // ),
                    // const SizedBox(height: 30),
                    // AppText(
                    //   text: "People",
                    //   color: Colors.black.withOpacity(0.9),
                    //   size: 25,
                    // ),
                    // const SizedBox(height: 5),
                    // AppText(
                    //   text: "Number of people in your group",
                    //   color: Colors.grey,
                    // ),
                    // const SizedBox(height: 10),
                    // Wrap(
                    //   children: [
                    //     ...List.generate(
                    //         5,
                    //         (index) => InkWell(
                    //               onTap: () => setState(() {
                    //                 selectedIndex = index;
                    //               }),
                    //               child: Container(
                    //                 margin: const EdgeInsets.only(right: 10),
                    //                 child: AppButton(
                    //                   color: selectedIndex == index
                    //                       ? Colors.white
                    //                       : Colors.black,
                    //                   backgroundColor: selectedIndex == index
                    //                       ? Colors.black
                    //                       : Colors.grey.withOpacity(0.2),
                    //                   size: 50,
                    //                   borderColor: selectedIndex == index
                    //                       ? Colors.black
                    //                       : Colors.grey.withOpacity(0.2),
                    //                   text: (index + 1).toString(),
                    //                 ),
                    //               ),
                    //             )),
                    //   ],
                    // ),
                    // const SizedBox(height: 15),
                    // AppLargeText(
                    //     text: "Description",
                    //     color: Colors.black.withOpacity(0.8),
                    //     size: 20),
                    // const SizedBox(height: 5),
                    // AppText(
                    //   text: detail.place.description,
                    //   color: Colors.grey,
                    // )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
