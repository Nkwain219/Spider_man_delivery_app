import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/dashboard/Calls.dart';
import 'package:spider_man_delivery_app/dashboard/chats.dart';
import 'package:spider_man_delivery_app/dashboard/history.dart';
import 'package:spider_man_delivery_app/dashboard/info.dart';
import 'package:spider_man_delivery_app/dashboard/pickuplocation.dart';
import 'package:spider_man_delivery_app/dashboard/profile.dart';
import 'package:spider_man_delivery_app/dashboard/saveplaces.dart';
import 'package:spider_man_delivery_app/dashboard/send.dart';
import 'package:spider_man_delivery_app/dashboard/setting.dart';
import 'package:spider_man_delivery_app/getting_started/signin.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final Color drawerTextColor = const  Color(0xE800001A);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context){
          return IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, icon: Icon(Icons.menu,size: screenHeight * 0.03,));
        },),
        title: const Text("Dashboard",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                MaterialPageRoute(builder: (BuildContext context) => const Profile()));
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  border: Border.all(width: 2,color: Colors.red)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                    child: Image.asset('assets/profile.JPG',fit: BoxFit.cover,)
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
        ),
        child: Drawer(
          width: screenWidth * 0.7,
          elevation: 0,
          child: Material(
            elevation: 0,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children:[
                     Row(
                       children: [
                         IconButton(onPressed: (){
                           Navigator.pop(context);
                         }, icon: const Icon(Icons.close,size: 30,),
                         style: ButtonStyle(
                           textStyle: WidgetStateProperty.all<TextStyle>(const TextStyle(fontWeight: FontWeight.bold)),
                         ),),
                         const SizedBox(width: 50,),
                         Text("Menu",style: TextStyle(color: drawerTextColor,fontSize: 20,fontWeight: FontWeight.bold)),
                       ],
                     ),
                    const SizedBox(height: 20,),
                    Center(
                      child: Container(
                        height: screenHeight * 0.1,
                        width: screenWidth * 0.65,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child:
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text("BALANCE",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("10 WEB",style: TextStyle(color: Colors.white,),),
                                  Text("1000 XAF",style: TextStyle(color: Colors.white,),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    ListTile(
                      title:  Text("Send",style: TextStyle(color: drawerTextColor ,fontSize: 18,fontWeight: FontWeight.bold),),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) => const Send()));
                      },
                    ),
                    const Divider(
                      height: 0.5,
                    ),
                    ListTile(
                      title:  Text("History",style: TextStyle(color: drawerTextColor,fontSize: 18,fontWeight: FontWeight.bold)),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) => const History()));
                      },
                    ),
                    const Divider(
                      height: 0.5,
                    ),
                    ListTile(
                      title:  Text("Call",style: TextStyle(color: drawerTextColor,fontSize: 18,fontWeight: FontWeight.bold)),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) => const Calls()));
                      },
                    ),
                    const Divider(height: 0.5,),
                    ListTile(
                      title:  Text("Save Places",style: TextStyle(color: drawerTextColor,fontSize: 18,fontWeight: FontWeight.bold)),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) => const SavePlaces()));
                      },
                    ),
                    const Divider(height: 0.5,),
                    ListTile(
                      title:  Text("Setting",style: TextStyle(color: drawerTextColor,fontSize: 18,fontWeight: FontWeight.bold),),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) => const Setting()));
                      },
                    ),
                    const Divider(
                      height: 0.5,
                    ),
                    ListTile(
                      title:  Text("Chat",style: TextStyle(color: drawerTextColor ,fontSize: 18,fontWeight: FontWeight.bold),),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) => const ChatPage()));
                      },
                    ),
                    const Divider(height: 0.5,),
                    ListTile(
                      title: Text("Info",style: TextStyle(color:drawerTextColor ,fontSize: 18,fontWeight: FontWeight.bold),),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) => const Info()));
                      },
                    ),
                    const Divider(height: 0.5,),
                    ListTile(
                      title:  Text("Logout",style: TextStyle(color: drawerTextColor,fontSize: 18,fontWeight: FontWeight.bold),),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) => const SignIn()));
                      },
                    ),
                    const Divider(height: 0.5,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:10,left: 8,right: 8),
        child: Column(
          children: [
             Image(image: const AssetImage('assets/map.JPG'),
            height: screenHeight * 0.31 ,fit: BoxFit.cover,width: screenWidth,),
            Expanded(
              child: Container(
                decoration:  BoxDecoration(
                  color: Colors.grey[300],
                ),
                child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight * 0.12,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child:
                        Center(
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 40.0),
                                      child: Text("Where to?"),
                                    ),
                                    Spacer(),
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8)),
                                        child: Image(image: AssetImage('assets/car.JPG'),height: 40,))
                                  ],
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.42,),
                              IconButton(onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (BuildContext context) => const PickUpLocation()));
                              }, icon: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.red,) )
                              //Icon(Icons.arrow_forward_ios_outlined,color: Colors.red,)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01,),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Container(
                              height: screenHeight * 0.15,
                              width: screenWidth * 0.42,
                              color: Colors.white,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment : Alignment.centerLeft,
                                        child: Text("Ndokoti")),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Expanded(child: Image(image: AssetImage('assets/car.JPG'),height: 40,)),
                                        Icon(Icons.location_on_rounded,color: Colors.red,)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.03,),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Container(
                              height: screenHeight * 0.15,
                              width: screenWidth * 0.46,
                              color: Colors.white,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment : Alignment.centerLeft,
                                        child: Text("Ndokoti")),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Expanded(child: Image(image: AssetImage('assets/car.JPG'),height: 40,)),
                                        Icon(Icons.location_on_rounded,color: Colors.red,)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.01,),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Container(
                              height: screenHeight * 0.15,
                              width: screenWidth * 0.46,
                              color: Colors.white,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment : Alignment.centerLeft,
                                        child: Text("Ndokoti")),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Expanded(child: Image(image: AssetImage('assets/car.JPG'),height: 40,)),
                                        Icon(Icons.location_on_rounded,color: Colors.red,)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.03,),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Container(
                              height: screenHeight * 0.15,
                              width: screenWidth * 0.42,
                              color: Colors.white,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment : Alignment.centerLeft,
                                        child: Text("Ndokoti")),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Expanded(child: Image(image: AssetImage('assets/car.JPG'),height: 40,)),
                                        Icon(Icons.location_on_rounded,color: Colors.red,)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
