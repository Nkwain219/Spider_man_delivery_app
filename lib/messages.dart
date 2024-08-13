import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spider_man_delivery_app/call.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new)),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/profile.JPG'),
            ),
            SizedBox(width: 10,),
            Text("Chucks",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Call()));
          }, icon: Icon(Icons.phone,color: Colors.red,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam,color: Colors.red,),),
          //Icon(Icons.phone,color: Colors.red,),
          //Icon(Icons.videocam,color: Colors.red,),
        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.only(left: 16.0,top: 16,right: 16,bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * 0.08 ,
              width: screenWidth * 0.5,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(16)
              ),
              child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("I'll be there shortly."),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                          child: Text("9:08 AM")),
                    ],
                  ),
                ),
            ),
            SizedBox(height: screenHeight * 0.06 ,),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: screenHeight * 0.08 ,
                width: screenWidth * 0.5,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16)
                ),
                child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("I'll be waiting."),
                      Spacer(),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text("9:09 AM")),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Container(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child:
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type a Message",
                            icon: Icon(Icons.emoji_emotions,color: Colors.red,),
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: 120,
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.file_present,color: Colors.red,))),
                      IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_rounded,color: Colors.red,))
                    ],
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.red,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.settings_voice,color: Colors.white,)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
