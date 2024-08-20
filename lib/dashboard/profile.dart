import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/dashboard/changepassword.dart';
import 'package:spider_man_delivery_app/dashboard/profiledetails.dart';
import 'package:spider_man_delivery_app/dashboard/setting.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: const Icon(Icons.arrow_back_ios_new,color: Colors.white,),),
        title: const Text("Profile",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child:
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: TextButton(onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (BuildContext context) => const ProfileDetails()));
                        },
                            child:const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Text("Profile Details",style: TextStyle(
                                    color: Colors.black)),
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            const Icon(Icons.settings,color: Colors.red,),
                            const SizedBox(height: 20,),
                            Expanded(
                              child: TextButton(onPressed: (){
                                Navigator.push(
                                    context,
                                MaterialPageRoute(builder: (BuildContext context ) => const Setting()));
                              },
                                  child:const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Settings",style: TextStyle(
                                        color: Colors.black)),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            const Icon(Icons.lock,color: Colors.red,),
                            const SizedBox(height: 20,),
                            Expanded(
                              child: TextButton(onPressed: (){
                                Navigator.push(context, 
                                    MaterialPageRoute(builder: (BuildContext context) => const ChangePassword()));
                              },
                                  child:const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Change Password",style: TextStyle(
                                      color: Colors.black
                                    ),),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            const Icon(Icons.logout_outlined,color: Colors.red,),
                            const SizedBox(height: 20,),
                            Expanded(
                              child: TextButton(onPressed: (){},
                                  child:const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Logout",style: TextStyle(
                                        color: Colors.black)),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0,left: 125),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(width: 4,color: Colors.white),
                    shape: BoxShape.circle,
                  ),
                  child:
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/profile.JPG',fit: BoxFit.cover,)),
                ),
                const SizedBox(height: 10,),
                const Text("John Doe",style: TextStyle(fontWeight: FontWeight.bold),),
                const Text("johndoe@gmail.com"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
