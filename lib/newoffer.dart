import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/paymentmethod.dart';

class NewOffer extends StatelessWidget {
  const NewOffer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new)),
        title: Text("New Offer"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ID",style: TextStyle(fontWeight: FontWeight.bold),),
            Container(
              height: screenHeight * 0.05,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(alignment: Alignment.centerLeft,
                    child: Text("123959809")),
              ),
            ),
            SizedBox(height:screenHeight * 0.02,),
            Text("Pick Up",style: TextStyle(fontWeight: FontWeight.bold),),
            Container(
              height: screenHeight * 0.05,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(alignment: Alignment.centerLeft,
                    child: Text("Diedo")),
              ),
            ),
            SizedBox(height:screenHeight * 0.02,),
            Text("Drop Up",style: TextStyle(fontWeight: FontWeight.bold),),
            Container(
              height: screenHeight * 0.05,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(alignment: Alignment.centerLeft,
                    child: Text("PK 14")),
              ),
            ),
            SizedBox(height:screenHeight * 0.02,),
            Text("Brief Describtion",style: TextStyle(fontWeight: FontWeight.bold),),
            Container(
              height: screenHeight * 0.05,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(alignment: Alignment.centerLeft,
                    child: Text("Second gate after Campus B IUG.")),
              ),
            ),
            SizedBox(height:screenHeight * 0.02,),
            Text("Vehicle Preferences",style: TextStyle(fontWeight: FontWeight.bold),),
            Container(
              height: screenHeight * 0.05,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(alignment: Alignment.centerLeft,
                    child: Text("Bike")),
              ),
            ),
            SizedBox(height: screenHeight * 0.1,),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
              ),
              child:TextButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => const PaymentMethod()));
              },
                  child:
                  const Text("Confirm",style: TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 18),)),
            ),
          ],
        ),
      ),
    );
  }
}
