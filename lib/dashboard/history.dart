import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text("History"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Material(
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: screenHeight * 0.05,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16),
                    child: Row(
                     children: [
                       const Text("ID",style: TextStyle(color: Colors.white),),
                       SizedBox(width: screenWidth * 0.33,),
                       const Expanded(child: Text("DATE",style: TextStyle(color: Colors.white),)),
                       //SizedBox(width: screenWidth * 0.3,),
                       const Text("STATUS",style: TextStyle(color: Colors.white),),
                     ],
                    ),
                  ) ,
                ),
              ),
            ),
            SizedBox(height:screenHeight * 0.015 ,),
            Material(
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: screenHeight * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("1",),
                        SizedBox(width: screenWidth * 0.33,),
                        const Expanded(child: Text("05/05/2023",)),
                        //SizedBox(width: screenWidth * 0.3,),
                        const Text("Delivered",),
                      ],
                    ),
                  ) ,
                ),
              ),
            ),
            SizedBox(height:screenHeight * 0.015 ,),
            Material(
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: screenHeight * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("2",),
                        SizedBox(width: screenWidth * 0.33,),
                        const Expanded(child: Text("05/05/2023",)),
                        //SizedBox(width: screenWidth * 0.3,),
                        const Text("Delivered",),
                      ],
                    ),
                  ) ,
                ),
              ),
            ),
            SizedBox(height:screenHeight * 0.015 ,),
            Material(
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: screenHeight * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("3",),
                        SizedBox(width: screenWidth * 0.33,),
                        const Expanded(child: Text("05/05/2023",)),
                        //SizedBox(width: screenWidth * 0.3,),
                        const Text("In Progress",),
                      ],
                    ),
                  ) ,
                ),
              ),
            ),
            SizedBox(height:screenHeight * 0.015 ,),
            Material(
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: screenHeight * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("4",),
                        SizedBox(width: screenWidth * 0.33,),
                        const Expanded(child: Text("05/05/2023",)),
                        //SizedBox(width: screenWidth * 0.3,),
                        const Text("Pending",),
                      ],
                    ),
                  ) ,
                ),
              ),
            ),
            SizedBox(height:screenHeight * 0.015 ,),
            Material(
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: screenHeight * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("5",),
                        SizedBox(width: screenWidth * 0.33,),
                        const Expanded(child: Text("05/05/2023",)),
                        //SizedBox(width: screenWidth * 0.3,),
                        const Text("Delivered",),
                      ],
                    ),
                  ) ,
                ),
              ),
            ),
            SizedBox(height:screenHeight * 0.015 ,),
            Material(
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: screenHeight * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("6",),
                        SizedBox(width: screenWidth * 0.33,),
                        const Expanded(child: Text("05/05/2023",)),
                        //SizedBox(width: screenWidth * 0.3,),
                        const Text("Cancelled",),
                      ],
                    ),
                  ) ,
                ),
              ),
            ),
            SizedBox(height:screenHeight * 0.015 ,),
            Material(
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: screenHeight * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("7",),
                        SizedBox(width: screenWidth * 0.33,),
                        const Expanded(child: Text("05/05/2023",)),
                        //SizedBox(width: screenWidth * 0.3,),
                        const Text("Delivered",),
                      ],
                    ),
                  ) ,
                ),
              ),
            ),
            SizedBox(height:screenHeight * 0.015 ,),
            Material(
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: screenHeight * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("8",),
                        SizedBox(width: screenWidth * 0.33,),
                        const Expanded(child: Text("05/05/2023",)),
                        //SizedBox(width: screenWidth * 0.3,),
                        const Text("In Process",),
                      ],
                    ),
                  ) ,
                ),
              ),
            ),
            SizedBox(height:screenHeight * 0.015 ,),
            Material(
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: screenHeight * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("9",),
                        SizedBox(width: screenWidth * 0.33,),
                        const Expanded(child: Text("05/05/2023",)),
                        //SizedBox(width: screenWidth * 0.3,),
                        const Text("Delivered",),
                      ],
                    ),
                  ) ,
                ),
              ),
            ),
            SizedBox(height:screenHeight * 0.015 ,),
            Material(
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: screenHeight * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("10",),
                        SizedBox(width: screenWidth * 0.33,),
                        const Expanded(child: Text("05/05/2023",)),
                        //SizedBox(width: screenWidth * 0.3,),
                        const Text("Pending",),
                      ],
                    ),
                  ) ,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
