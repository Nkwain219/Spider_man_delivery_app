import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/dashboard/newoffer.dart';

class PackageInformation extends StatefulWidget {
  const PackageInformation({super.key});

  @override
  State<PackageInformation> createState() => _PackageInformationState();
}

class _PackageInformationState extends State<PackageInformation> {
  bool _isExpanded = false;
  bool _Expanded = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios_new) ),
        title: const Text("Package Information"),
        centerTitle: true,
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Category",style: TextStyle(fontWeight: FontWeight.bold),),
              Container(
                height: screenHeight * 0.05,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(8),
                  topRight: Radius.circular(8)),
                  color: Colors.grey[300],
                ),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      _Expanded = !_Expanded;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16),
                    child: Row(
                      children: [
                        const Expanded(child: Text("Electronics")),
                        Icon(_Expanded? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,color: Colors.red,)
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: _Expanded,
                child: Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Electronics"),
                        SizedBox(height: screenHeight * 0.005,),
                        const Text("Electronics"),
                        SizedBox(height: screenHeight * 0.005,),
                        const Text("Electronics"),
                        SizedBox(height: screenHeight * 0.005,),
                        const Text("Electronics"),
                        SizedBox(height: screenHeight * 0.005,),
                        const Text("Electronics"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02,),
              const Text("Weight",style: TextStyle(fontWeight: FontWeight.bold),),
              Container(
                height: screenHeight * 0.05,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                  color: Colors.grey[300],
                ),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16),
                    child: Row(
                      children: [
                        const Expanded(child: Text("0kg-5.0kg")),
                        Icon(_isExpanded? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,color: Colors.red,)
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: _isExpanded,
                child: Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("0.0kg-10.0kg"),
                        SizedBox(height: screenHeight * 0.005,),
                        const Text("10.0kg-20.0kg"),
                        SizedBox(height: screenHeight * 0.005,),
                        const Text("30.0kg-40.0kg"),
                        SizedBox(height: screenHeight * 0.005,),
                        const Text("50kg-60.0kg"),
                        SizedBox(height: screenHeight * 0.005,),
                        const Text("70kg-80.0kg"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02,),
              const Text("Describtion",style: TextStyle(fontWeight: FontWeight.bold),),
              Container(
                height: screenHeight * 0.1,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                child: const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type Describtion"
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02,),
              Row(
                children: [
                  const Expanded(child: Text("Vehicle Preference",style: TextStyle(fontWeight: FontWeight.bold),)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.red,)),
                  //Icon(Icons.more_vert,color: Colors.red,)
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                        child: Image(image: const AssetImage('assets/006.PNG'),height: screenHeight * 0.12,width: screenWidth * 0.3,fit: BoxFit.cover,)),
                    SizedBox(width: screenWidth * 0.04,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                        child: Image(image: const AssetImage('assets/005.JPG'),height: screenHeight * 0.12,width: screenWidth * 0.3,fit: BoxFit.cover)),
                    SizedBox(width: screenWidth * 0.04,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                        child: Image(image: const AssetImage('assets/006.PNG'),height: screenHeight * 0.12,width: screenWidth * 0.3,fit: BoxFit.cover)),
                  ],
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
                      MaterialPageRoute(builder: (BuildContext context) => const NewOffer()));
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
