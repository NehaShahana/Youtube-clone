// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/addScreen.dart';
import 'package:flutter_application_1/profileScreen.dart';
import 'package:flutter_application_1/shortsScreen.dart';
import 'package:flutter_application_1/subscriptionScreen.dart';
import 'package:flutter_application_1/youtube.dart';

class utubScreen extends StatefulWidget {
  const utubScreen({super.key});

  @override
  State<utubScreen> createState() => _utubScreenState();
}

class _utubScreenState extends State<utubScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int selectedindex = 0;
  // int selectedIndex1 = 0;

  List<Widget> screen = [];
  @override
  void initState() {
    // TODO: implement initState
    screen = [
      YouTube(
        onTap: () {
          log("message drawer");
          if (_key.currentState != null) {
            _key.currentState?.openDrawer();
          }
        },
      ),
      shortScreen(),
      addScreen(),
      subscriptionScreen(),
      profilescreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                child: Image.network(
                  "https://img.freepik.com/premium-vector/youtube-logotype-youtube-is-videosharing-website_686498-399.jpg",
                  fit: BoxFit.cover,
                  // height: 300.00,
                  width: 100,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.whatshot_outlined),
              title: Text("Trending"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag_outlined),
              title: Text("Shopping"),
            ),
            ListTile(
              leading: Icon(Icons.music_note_outlined),
              title: Text("music"),
            ),
            ListTile(
              leading: Icon(Icons.movie_creation_outlined),
              title: Text("movies"),
            ),
            ListTile(
              leading: Icon(Icons.live_tv_outlined),
              title: Text("Live"),
            ),
            ListTile(
              leading: Icon(Icons.games_outlined),
              title: Text("Gaming"),
            ),
            ListTile(
              leading: Icon(Icons.newspaper_outlined),
              title: Text("News"),
            ),
            ListTile(
              leading: Icon(Icons.sports_bar),
              title: Text("Sports"),
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Image.network(
                    "https://cdn-icons-png.flaticon.com/128/14776/14776936.png",
                    width: 100,
                    height: 30,
                  ),
                  title: Text("YouTube Premium "),
                ),
                ListTile(
                  leading: Image.network(
                    "https://cdn-icons-png.flaticon.com/128/15047/15047447.png",
                    width: 100,
                    height: 30,
                  ),
                  title: Text("YouTube Studio "),
                ),
                ListTile(
                  leading: Image.network(
                    "https://cdn-icons-png.flaticon.com/128/15047/15047447.png",
                    width: 100,
                    height: 30,
                  ),
                  title: Text("YouTube Music "),
                ),
                ListTile(
                  leading: Image.network(
                    "https://cdn-icons-png.flaticon.com/128/1384/1384060.png",
                    width: 100,
                    height: 30,
                  ),
                  title: Text("YouTube kids "),
                ),
                Text(
                  "PRIVACY POLICY.TERMS OF SERVICES",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                )
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // leading:
        //     // padding: const EdgeInsets.only(
        //     //   left: 5,
        //     // ),
        //     Image.network(
        //         "https://img.freepik.com/premium-vector/youtube-logotype-youtube-is-videosharing-website_686498-399.jpg",
        //         fit: BoxFit.contain,
        //         height: 300.00,
        //         width: 20.00),
        leading: Image.asset(
          "assets/video.png",
          height: 2,
          width: .5,
        ),
        // height: .2,
        // width: .5,

        title: const Text(
          'YouTube',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.cast_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Badge(
              backgroundColor: Colors.red,
              label: Text('9+'),
              child: const Icon(Icons.notifications_none_outlined),
            ),
            onPressed: () {},
          ),
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: screen[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        currentIndex: selectedindex,
        fixedColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.youtube_searched_for),
              // icon: ImageIcon(
              //   size: 24,
              //   NetworkImage(
              //     "https://cdn.pixabay.com/photo/2022/09/08/13/59/youtube-7441044_1280.png",
              //   ),
              // ),
              label: "Shorts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions), label: "Subscription"),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://img.freepik.com/premium-vector/portrait-beautiful-women-round-frame-avatar-female-character-isolated-white-background_559729-216.jpg"),
            ),
            label: "You",
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
      ),
    );
  }
}
