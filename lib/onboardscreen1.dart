import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/signin.dart';

class OnBoardScreen1 extends StatelessWidget {
  const OnBoardScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SafeArea(
                  child: TextButton(onPressed: (){
                     Navigator.push(
                       context,
                   MaterialPageRoute(builder:(BuildContext context) => const SignIn()));
                  },
                      child: const Text("Skip",style: TextStyle(fontSize: 18,color: Colors.black),)),
                ),
              ),
              const SizedBox(height: 100,),
              const Center(child: Image(image: AssetImage('assets/spiderman.PNG'),height: 150,)),
              const SizedBox(height: 60,),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color:Colors.red),
                    borderRadius: BorderRadius.circular(16)
                ),
                child:
                const Center(child: Text("Beinvenu",style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                fontSize: 20),)),
              ),
              const SizedBox(height: 30,),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red,width: 2),
                  borderRadius: BorderRadius.circular(16)
                ),
                child:
                const Center(child: Text("Welcome",style: TextStyle(color: Colors.red,fontSize: 20,
                    fontWeight: FontWeight.bold),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
