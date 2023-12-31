import 'package:flutter/material.dart';
import 'package:youtube_ui/all_tab.dart';
import 'package:youtube_ui/bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  //list of images--------------------------

  List imgagesList=[
"images/img1.jpg",
"images/img2.jpg",
"images/img1.jpg",
"images/img3.jpg",
"images/img4.jpg",
"images/img5.jpg",
  ];
  //TextStyle style1 = const TextStyle(color: Colors.black);

  List<Widget> tabOpts = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.grey[500]),
          child: const Center(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("All", style: TextStyle(color: Colors.black)),
          ))),
    ),
    Container(
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3), 
            color: Colors.grey[800]),
        child: const Center(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Music", style: TextStyle(color: Colors.white)),
        ))),
    Container(
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3), 
            color: Colors.grey[800]),
        child: const Center(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Mixes", style: TextStyle(
            color: Colors.white)),
        ))),
    Container(
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
             color: Colors.grey[800]),
        child: const Center(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Live", style: TextStyle(color: Colors.white)),
        ))),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOpts.length,
      child: Scaffold(


        backgroundColor: Colors.grey[900],
        

        appBar: AppBar(
          titleSpacing: 2.0,
          backgroundColor: Colors.black87,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/youtube.png"),
          ),
          title: const Text(
            "Youtube",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.cast_connected_outlined),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_outlined),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TabBar(tabs: tabOpts),
               Expanded(
                child: TabBarView(children: [
                  AllTab(imgPath1: imgagesList[0],imgPath2: imgagesList[1],imgPath3: imgagesList[2],),
                  AllTab(imgPath1: imgagesList[3],imgPath2: imgagesList[4],imgPath3: imgagesList[5],),
                  AllTab(imgPath1: imgagesList[0],imgPath2: imgagesList[1],imgPath3: imgagesList[2],),
                  AllTab(imgPath1: imgagesList[0],imgPath2: imgagesList[1],imgPath3: imgagesList[2],),
                  AllTab(imgPath1: imgagesList[0],imgPath2: imgagesList[1],imgPath3: imgagesList[2],),
                  
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
