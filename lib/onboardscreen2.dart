import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/signin.dart';

class OnBoardScreen2 extends StatelessWidget {
  const OnBoardScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Align(alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){
                Navigator.push(
                    context,
                MaterialPageRoute(builder:(BuildContext context) => const SignIn()));
              },
                  child: const Text("Skip",style: TextStyle(fontSize: 18,color: Colors.black)),),
            ),
          ),
          const SizedBox(height: 50,),
          const Image(image: AssetImage('assets/placeorder.PNG'),height: 250,fit: BoxFit.cover,),
          const SizedBox(height: 50,),
          const Text("Place an Order",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
          const Text("Register an order for a",style: TextStyle(fontSize: 18),),
          const Text("product or service and we will",style: TextStyle(fontSize: 18),),
          const Text("deliver.",style: TextStyle(fontSize: 18),)
        ],
      ),

    );
  }
}