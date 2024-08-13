import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context,);
        },
            icon: Icon(Icons.arrow_back_ios_new)),
        title: Text("FAQ"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.05,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),
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
                      Expanded(child: Text("How do I place an Order")),
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
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /**Text("0.0kg-10.0kg"),
                      SizedBox(height: screenHeight * 0.005,),
                      Text("10.0kg-20.0kg"),
                      SizedBox(height: screenHeight * 0.005,),
                      Text("30.0kg-40.0kg"),
                      SizedBox(height: screenHeight * 0.005,),
                      Text("50kg-60.0kg"),
                      SizedBox(height: screenHeight * 0.005,),
                      Text("70kg-80.0kg"),**/
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03,),
            Container(
              height: screenHeight * 0.05,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),
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
                      Expanded(child: Text("How long does it take to deliver a product?")),
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
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("It takes almost 30 mins per delivery"),
                          /**SizedBox(height: screenHeight * 0.005,),
                          Text("10.0kg-20.0kg"),
                          SizedBox(height: screenHeight * 0.005,),
                          Text("30.0kg-40.0kg"),
                          SizedBox(height: screenHeight * 0.005,),
                          Text("50kg-60.0kg"),
                          SizedBox(height: screenHeight * 0.005,),
                          Text("70kg-80.0kg"),**/
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03,),
            Container(
              height: screenHeight * 0.05,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),
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
                      Expanded(child: Text("How can I track my Order?")),
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
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /**Text("It takes almost 30 mins per delivery"),
                      SizedBox(height: screenHeight * 0.005,),
                          Text("10.0kg-20.0kg"),
                          SizedBox(height: screenHeight * 0.005,),
                          Text("30.0kg-40.0kg"),
                          SizedBox(height: screenHeight * 0.005,),
                          Text("50kg-60.0kg"),
                          SizedBox(height: screenHeight * 0.005,),
                          Text("70kg-80.0kg"),**/
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
