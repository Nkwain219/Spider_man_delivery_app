import 'package:flutter/material.dart';

class SavePlaces extends StatelessWidget {
  const SavePlaces({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text("Save Places"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.04,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                    child: Text("PK 14")),
              ),
            ),
            SizedBox(height: screenHeight * 0.03,),
            Container(
              height: screenHeight * 0.04,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Bonammoussadi")),
              ),
            ),
            SizedBox(height: screenHeight * 0.03,),
            Container(
              height: screenHeight * 0.04,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Bonapriso")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
