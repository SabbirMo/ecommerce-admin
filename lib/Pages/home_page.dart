import 'package:e_commerce/Buttons/textButton.dart';
import 'package:e_commerce/Components/horizontal_list.dart';
import 'package:e_commerce/Grid_View/grid_view.dart';
import 'package:e_commerce/Grid_View/gridview_button.dart';
import 'package:e_commerce/HotSelling/hotselling.dart';
import 'package:e_commerce/Time/time_now.dart';
import 'package:flutter/material.dart';

import '../Components/carousal_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("User"),
              accountEmail: Text("user@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/sabbir.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text('Sabbir'),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 25, left: 25, top: 45, bottom: 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Search Anything...",
                      hintStyle: const TextStyle(
                        fontSize: 18,
                      ),
                      prefixIcon: const Icon(
                        Icons.search_sharp,
                        size: 30,
                        color: Color.fromARGB(255, 68, 67, 67),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 68, 67, 67))),
                    ),
                    cursorColor: const Color.fromARGB(255, 68, 67, 67),
                  ),
                ),
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cetagories",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      ViewTextButton()
                    ],
                  ),
                ),
                const HorizontalListView(),
                const SizedBox(height: 35),
                //Image Carousal Slider
                const CarousalSlider(),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Deal Of the day",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      //All View
                      ViewTextButton(),
                    ],
                  ),
                ),
                //time picker
                const ViewTimeNow(),
                const SizedBox(height: 35),
                //Grid View
                HomeGridView(
                  image:
                      'https://images.unsplash.com/photo-1460353581641-37baddab0fa2?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  image1:
                      'https://images.unsplash.com/photo-1603808033192-082d6919d3e1?q=80&w=1915&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                //Show Off Button
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GridViewButton(
                      text: "Running Shoes",
                      buttonText: "Upto 40% OFF",
                    ),
                    GridViewButton(
                      text: 'Sneakers',
                      buttonText: "40-60% OFF",
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                //Grid View
                HomeGridView(
                  image:
                      'https://images.unsplash.com/photo-1619134778706-7015533a6150?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  image1:
                      'https://images.unsplash.com/photo-1589256469067-ea99122bbdc4?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                //Show Off Button
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GridViewButton(
                      text: "Wrist Watches",
                      buttonText: "Upto 40% OFF",
                    ),
                    GridViewButton(
                      text: 'Bluetooth Speakers',
                      buttonText: "40-60% OFF",
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hot Selling Footwear",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      ViewTextButton(),
                    ],
                  ),
                ),
               
                HotSelling()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
