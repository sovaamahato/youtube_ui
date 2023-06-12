import 'package:flutter/material.dart';

class AllTab extends StatelessWidget {
  const AllTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(children: [
            const SizedBox(height: 10,),
            Image.asset("images/img1.jpg"),
            const SizedBox(height: 8,),
            const Text("Best Idea for designing Youtube thumbnail || How to design Uoutube Thumbnaqil",
            style: TextStyle(color: Colors.white,fontSize: 17),),
            const SizedBox(height: 20,),
            Image.asset("images/img2.jpg"),
            const SizedBox(height: 8,),
            const Text("Best Idea for designing Youtube thumbnail || How to design Uoutube Thumbnaqil",
            style: TextStyle(color: Colors.white,fontSize: 17),),
            const SizedBox(height: 10,),
          
            const SizedBox(height: 10,),
            Image.asset("images/img1.jpg"),
            const Text("Best Idea for designing Youtube thumbnail || How to design Uoutube Thumbnaqil",
            style: TextStyle(color: Colors.white,fontSize: 17),),
            const SizedBox(height: 10,),
            
        ],),
      ),
    );
  }
}