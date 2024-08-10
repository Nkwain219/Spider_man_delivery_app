import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/signin.dart';

class OnBoardScreen3 extends StatelessWidget {
  const OnBoardScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 200,),
          const Image(image: AssetImage('assets/delivery.JPG'),height: 200,),
          const Text("Fast Delivery",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
          const Text("We provide the fastest",style: TextStyle(fontSize: 18)),
          const Text("delivery service.",style: TextStyle(fontSize: 18)),
          const SizedBox(height: 20,),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder:(BuildContext context) => const SignIn()));
            },
            child: const Text("Get Started",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),),
          ),
        ],
      ),
    );
  }
}
