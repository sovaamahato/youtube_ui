import 'package:flutter/material.dart';

class AllTab extends StatelessWidget {
  final imgPath1;
  final imgPath2;
  final imgPath3;
  AllTab({required this.imgPath1,required this.imgPath2,required this.imgPath3});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(children: [
            const SizedBox(height: 10,),
            Image.asset(imgPath1),
            const SizedBox(height: 8,),
            const Text("Best Idea for designing Youtube thumbnail || How to design Uoutube Thumbnaqil",
            style: TextStyle(color: Colors.white,fontSize: 17),),
            const SizedBox(height: 20,),
            Image.asset(imgPath2),
            const SizedBox(height: 8,),
            const Text("Best Idea for designing Youtube thumbnail || How to design Uoutube Thumbnaqil",
            style: TextStyle(color: Colors.white,fontSize: 17),),
            const SizedBox(height: 10,),
          
            const SizedBox(height: 10,),
            Image.asset(imgPath3),
            const Text("Best Idea for designing Youtube thumbnail || How to design Uoutube Thumbnaqil",
            style: TextStyle(color: Colors.white,fontSize: 17),),
            const SizedBox(height: 10,),
            
        ],),
      ),
    );
  }
}