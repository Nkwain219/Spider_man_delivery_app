import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
        title: const Text("Change Password"),
        centerTitle: true,
      ),
      body:
      SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset('assets/changepassword.PNG',height: screenHeight * 0.3,),
                const SizedBox(height: 20,),
                const Text("Fill the spaces to reset your password."),
                const SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Old password",
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "New Password",
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirm Password",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.08,),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.red,
                  ),
                  child: TextButton(onPressed: (){},
                      child: const Text("Change Password",style: TextStyle(
                        color: Colors.white,
                      ),)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
