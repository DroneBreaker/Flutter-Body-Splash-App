import 'package:body_splash/pages/profile.dart';
import 'package:body_splash/widgets/app-text.dart';
import 'package:body_splash/widgets/appLargeText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   List pages = [const HomePage()];

//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//           onTap: (int index) => setState(() {
//             currentIndex = index;
//           }),
//           currentIndex: currentIndex,
//           type: BottomNavigationBarType.fixed,
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           elevation: 0,
//           items: [
//             BottomNavigationBarItem(
//               label: "Home",
//               icon: Icon(Icons.menu),
//             ),
//             BottomNavigationBarItem(
//               label: "Order",
//               icon: Icon(Icons.shopping_cart),
//             ),
//             BottomNavigationBarItem(
//               label: "Search",
//               icon: Icon(Icons.search),
//             ),
//             BottomNavigationBarItem(
//               label: "Profile",
//               icon: Icon(Icons.person),
//             ),
//           ],
//         ),
//         body: pages[currentIndex]);
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    List images = ["collection.jpg", "dress.jpg", "demo.jpg", "shirts.jpg"];
    // isSelected = false;

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(text: "Search", color: Colors.grey.withOpacity(0.8)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText(text: "For Perfume"),
                // Container(
                //   decoration: const BoxDecoration(
                //     shape: BoxShape.circle,
                //   ),
                //   child:
                CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: IconButton(
                    onPressed: () => Get.to(() => const ProfilePage()),
                    icon: const Icon(Icons.person),
                  ),
                ),
                // )
              ],
            ),
            const SizedBox(height: 25),
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.8),
                        hintText: "Find Your Scent",
                        hintStyle: new TextStyle(color: Colors.white),
                        border: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        suffixIcon: Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 10,
                          width: 50,
                          decoration: BoxDecoration(
                              // color: Color(0x8F00FF),
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            DefaultTabController(
              initialIndex: 0,
              length: 4,
              child: Column(
                children: [
                  Container(
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      labelColor: Colors.redAccent,
                      indicatorSize: TabBarIndicatorSize.label,
                      unselectedLabelColor: Colors.grey.withOpacity(0.6),
                      labelStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      tabs: [
                        Tab(text: "Popular"),
                        Tab(text: "New Collection"),
                        Tab(text: "Highest Sales"),
                        Tab(text: "New Arrivals"),
                      ],
                    ),
                  ),
                  Container(
                    height: 440,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, int index) {
                            return GestureDetector(
                              onTap: () {
                                Get.toNamed("/detail");
                              },
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin:
                                    const EdgeInsets.only(right: 15, top: 10),
                                child: Container(
                                  width: 300,
                                  height: 400,
                                  // color: Colors.red,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.redAccent,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 50),
                                        height: 240,
                                        width: 280,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: const DecorationImage(
                                            image:
                                                const AssetImage("img/jc.jpg"),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      AppText(
                                        text: "JC",
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      AppText(
                                        text:
                                            "JC just makes everything around you amazing",
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      AppLargeText(text: "\$499"),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        Container(
                          height: 440,
                          child: ListView.builder(
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, int index) {
                              return Card(
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(right: 15, top: 10),
                                  width: 300,
                                  height: 400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue[400],
                                    // image: const DecorationImage(
                                    //   image: AssetImage("img/collection.jpg"),
                                    //   fit: BoxFit.cover,
                                    // ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 50),
                                        height: 240,
                                        width: 280,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: const DecorationImage(
                                            image:
                                                const AssetImage("img/you.jpg"),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      AppText(
                                        text: "You",
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      AppText(
                                        text: "Best for all",
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      AppLargeText(text: "\$499"),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          height: 440,
                          child: ListView.builder(
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, int index) {
                                return Card(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        right: 15, top: 10),
                                    width: 300,
                                    height: 400,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.orange[400],
                                      // image: const DecorationImage(
                                      //   image: AssetImage("img/collection.jpg"),
                                      //   fit: BoxFit.cover,
                                      // ),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 50),
                                          height: 240,
                                          width: 280,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: const DecorationImage(
                                              image: const AssetImage(
                                                  "img/si.jpg"),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        AppText(
                                          text: "Si",
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                        AppText(
                                          text: "Fragrance so nice",
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        AppLargeText(text: "\$599"),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                        Container(
                          height: 440,
                          child: ListView.builder(
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, int index) {
                                return Card(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        right: 15, top: 10),
                                    width: 300,
                                    height: 400,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.yellowAccent,
                                      // image: const DecorationImage(
                                      //   image: AssetImage("img/collection.jpg"),
                                      //   fit: BoxFit.cover,
                                      // ),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 50),
                                          height: 240,
                                          width: 280,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  "img/eve.jpg"),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        AppText(
                                          text: "Eve",
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                        AppText(
                                          text: "Best Fragrance",
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        AppLargeText(text: "\$999"),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
