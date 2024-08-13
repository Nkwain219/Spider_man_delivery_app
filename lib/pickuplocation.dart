import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spider_man_delivery_app/droplocation.dart';

class PickUpLocation extends StatelessWidget {
  const PickUpLocation({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios_new)),
        title: Text("Pick Up Location"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Select Pick up location"),
              SizedBox(height: screenHeight * 0.01,),
              Container(
                height: screenHeight * 0.04,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[300],
                ),
                child:
                const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "",
                    icon: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.search)),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01,),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(image: const AssetImage('assets/map.JPG'),
                  height: screenHeight * 0.25 ,fit: BoxFit.cover,width: screenWidth,),
              ),
              SizedBox(height: screenHeight * 0.02,),
              Container(
                height: screenHeight * 0.05,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "City",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02,),
              Container(
                height: screenHeight * 0.05,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Quater",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02,),
              Container(
                height: screenHeight * 0.15,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Brief Describtion",
                      ),
                    ),
                  ),
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
                      MaterialPageRoute(builder: (BuildContext context) => const DropLocation()));
                },
                    child:
                    const Text("Next",style: TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 18),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
