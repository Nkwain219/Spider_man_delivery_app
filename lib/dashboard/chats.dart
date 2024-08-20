import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/dashboard/messages.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

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
        title: const Text("Chats"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.04,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16),
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
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const Messages()));
                },
                child: SizedBox(
                  height: screenHeight * 0.06,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset('assets/profile.JPG').image,
                      ),
                      SizedBox(width: screenWidth * 0.02,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chucks",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("I'll soon arrive"),
                        ],
                      ),
                      const Spacer(),
                      const Text("9:00 Am"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const Messages()));
                },
                child: SizedBox(
                  height: screenHeight * 0.06,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset('assets/profile.JPG').image,
                      ),
                      SizedBox(width: screenWidth * 0.02,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chucks",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("I'll soon arrive"),
                        ],
                      ),
                      const Spacer(),
                      const Text("9:00 Am"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const Messages()));
                },
                child: SizedBox(
                  height: screenHeight * 0.06,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset('assets/profile.JPG').image,
                      ),
                      SizedBox(width: screenWidth * 0.02,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chucks",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("I'll soon arrive"),
                        ],
                      ),
                      const Spacer(),
                      const Text("9:00 Am"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const Messages()));
                },
                child: SizedBox(
                  height: screenHeight * 0.06,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset('assets/profile.JPG').image,
                      ),
                      SizedBox(width: screenWidth * 0.02,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chucks",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("I'll soon arrive"),
                        ],
                      ),
                      const Spacer(),
                      const Text("9:00 Am"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const Messages()));
                },
                child: SizedBox(
                  height: screenHeight * 0.06,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset('assets/profile.JPG').image,
                      ),
                      SizedBox(width: screenWidth * 0.02,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chucks",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("I'll soon arrive"),
                        ],
                      ),
                      const Spacer(),
                      const Text("9:00 Am"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const Messages()));
                },
                child: SizedBox(
                  height: screenHeight * 0.06,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset('assets/profile.JPG').image,
                      ),
                      SizedBox(width: screenWidth * 0.02,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chucks",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("I'll soon arrive"),
                        ],
                      ),
                      const Spacer(),
                      const Text("9:00 Am"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const Messages()));
                },
                child: SizedBox(
                  height: screenHeight * 0.06,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset('assets/profile.JPG').image,
                      ),
                      SizedBox(width: screenWidth * 0.02,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chucks",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("I'll soon arrive"),
                        ],
                      ),
                      const Spacer(),
                      const Text("9:00 Am"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const Messages()));
                },
                child: SizedBox(
                  height: screenHeight * 0.06,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset('assets/profile.JPG').image,
                      ),
                      SizedBox(width: screenWidth * 0.02,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chucks",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("I'll soon arrive"),
                        ],
                      ),
                      const Spacer(),
                      const Text("9:00 Am"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const Messages()));
                },
                child: SizedBox(
                  height: screenHeight * 0.06,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset('assets/profile.JPG').image,
                      ),
                      SizedBox(width: screenWidth * 0.02,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chucks",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("I'll soon arrive"),
                        ],
                      ),
                      const Spacer(),
                      const Text("9:00 Am"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const Messages()));
                },
                child: SizedBox(
                  height: screenHeight * 0.06,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset('assets/profile.JPG').image,
                      ),
                      SizedBox(width: screenWidth * 0.02,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chucks",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("I'll soon arrive"),
                        ],
                      ),
                      const Spacer(),
                      const Text("9:00 Am"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const Messages()));
                },
                child: SizedBox(
                  height: screenHeight * 0.06,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset('assets/profile.JPG').image,
                      ),
                      SizedBox(width: screenWidth * 0.02,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chucks",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("I'll soon arrive"),
                        ],
                      ),
                      const Spacer(),
                      const Text("9:00 Am"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
