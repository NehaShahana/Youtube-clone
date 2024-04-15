import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Utubemodel.dart';

class YouTube extends StatefulWidget {
  Function()? onTap;
  YouTube({super.key, required this.onTap});

  @override
  State<YouTube> createState() => _YouTubeState();
}

class _YouTubeState extends State<YouTube> {
  int selectedIndex = 0;
  final List<String> categoryList = [
    "explore",
    "all",
    "new to you",
    "mohanlal",
    "film",
    "comedy",
  ];

  List<Utubemodel> shortList = [
    Utubemodel(
        imageurl:
            "https://images.pexels.com/photos/20748917/pexels-photo-20748917/free-photo-of-girl-sitting-with-roses.jpeg?auto=compress&cs=tinysrgb&w=600",
        caption: "The earth laughs in flowers 🌼...."),
    Utubemodel(
        imageurl:
            "https://images.pexels.com/photos/18159465/pexels-photo-18159465/free-photo-of-man-posing-in-white-straight-collared-shirt-and-gray-shorts.jpeg?auto=compress&cs=tinysrgb&w=600",
        caption:
            "Attitude is the frame in which you view the world, the....🥰"),
    Utubemodel(
        imageurl:
            "https://images.pexels.com/photos/18054697/pexels-photo-18054697/free-photo-of-closeup-of-a-man-wearing-sunglasses-in-an-interior.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        caption: "PEACE....✌️"),
    Utubemodel(
        imageurl:
            "https://images.pexels.com/photos/18116059/pexels-photo-18116059/free-photo-of-boy-in-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600",
        caption: "BLACK IS....")
  ];
  List<Filimmodel> utubeList = [
    Filimmodel(
        imageur: "https://i.ytimg.com/vi/F0UP2jQL_AA/sddefault.jpg",
        caption1: " Youtube video backround |HTML",
        subcaption1: "CS .214k views .18hours ago",
        userimage:
            "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=600"),
    Filimmodel(
        imageur:
            "https://static.toiimg.com/thumb/msid-107783257,width-1280,height-720,resizemode-4/107783257.jpg",
        caption1: " Big Boss S6 live| #Bigboss",
        subcaption1: "BadpsyGaming.2.7k views",
        userimage:
            "https://upload.wikimedia.org/wikipedia/commons/e/e3/Asianet_2023_logo.png"),
    Filimmodel(
        imageur: "https://i.ytimg.com/vi/1wECsnGZcfc/maxresdefault.jpg",
        caption1: " 24 News Live TV | Live Updates....",
        subcaption1: "NEWS 24,2.7k watching",
        userimage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHsWCVxgh2RseYPUr7yaVeVjUgcfTKvCaCGtr_kl7EOA&s"),
    Filimmodel(
        imageur:
            "https://m.media-amazon.com/images/M/MV5BNWU1ZmNlYTctYmY1My00ZDlmLTk3M2EtZDcxY2E1ZGU0N2YzXkEyXkFqcGdeQXVyMTI1NDAzMzM0._V1_.jpg",
        caption1: " Imperfect at Home 🏠: What the Malayalam ...",
        subcaption1: "kairali tv ,1M Views",
        userimage:
            "https://w7.pngwing.com/pngs/276/443/png-transparent-television-channel-malayalam-kairali-tv-television-show-cpim-television-text-logo.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return index == 0
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 241, 237, 237),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                              onPressed: widget.onTap,
                              icon: const Icon(Icons.explore_outlined)),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedIndex == index
                                ? Colors.black
                                : const Color.fromARGB(255, 255, 249, 249),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12), // <-- Radius
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                categoryList[index],
                                style: TextStyle(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
              },
              itemCount: categoryList.length,
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: Image.network(
                  "https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/youtube-shorts-icon.png",
                  fit: BoxFit.fill,
                  width: 25,
                ),
                title: const Text(
                  "Shorts",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: .6),
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage(shortList[index].imageurl),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.more_vert_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  showModalBottomSheet(
                                      useSafeArea: true,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30.0)),
                                      ),
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                shape: BoxShape.rectangle),
                                            height: 180,
                                            // width: 400,
                                            child: const Column(
                                              children: [
                                                ListTile(
                                                  leading:
                                                      Icon(Icons.flag_outlined),
                                                  title: Text("Report"),
                                                ),
                                                ListTile(
                                                  leading: Icon(
                                                      Icons.not_interested),
                                                  title: Text("Not intrested"),
                                                ),
                                                ListTile(
                                                  leading: Icon(
                                                      Icons.feedback_outlined),
                                                  title: Text("Send feedback"),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(shortList[index].caption,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ]
                                //
                                ));
                  },
                  itemCount: shortList.length,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                      // height: 200,
                      width: 100,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            utubeList[index].imageur,
                            height: 300,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        utubeList[index].userimage,
                                      ),
                                      fit: BoxFit.fill),
                                ),
                                // child:
                                //     Padding(padding: EdgeInsets.all(8.0)),
                              ),
                            ),
                            title: Text(
                              utubeList[index].caption1,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Text(utubeList[index].subcaption1),
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.more_vert_outlined),
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 200,
                                        child: const Center(
                                          child: Text("this is bottom sheet"),
                                        ),
                                      );
                                    });
                              },
                            ),
                          )
                        ],
                      ));
                },
                itemCount: utubeList.length,
              )
            ],
          ),
        ],
      ),
    );
  }
}
