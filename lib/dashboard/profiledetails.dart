import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios_new),),
        title: const Text("Profile Details"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                    child: const Image(image: AssetImage('assets/profile.JPG'),fit: BoxFit.cover,)),
              ),
            ),
            const SizedBox(height: 20,),
            const Align(alignment: Alignment.centerLeft,
                child: Text("Full Name")),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top:8.0,left: 8.0,),
                child: Text("John Doe"),
              ),
            ),
            const SizedBox(height: 20,),
            const Align(alignment: Alignment.centerLeft,
                child: Text("Email")),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top:8.0,left: 8.0,),
                child: Text("johndoe@gmail.com"),
              ),
            ),
            const SizedBox(height: 20,),
            const Align(alignment: Alignment.centerLeft,
                child: Text("Gender")),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top:8.0,left: 8.0,),
                child: Text("Male"),
              ),
            ),
            const SizedBox(height: 20,),
            const Align(alignment: Alignment.centerLeft,
                child: Text("Phone Number")),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top:8.0,left: 8.0,),
                child: Text("+237 677756413"),
              ),
            ),
            const SizedBox(height: 50,),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
              child: const Text("Save",style: TextStyle(color: Colors.white),),),
            ),
          ],
        ),
      ),
    );
  }
}
