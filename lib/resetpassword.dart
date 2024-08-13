import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/resetpassword2.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});
  final Color containerColor = const  Color(0xE7E2E2FF);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios_new,size: screenHeight * 0.03,),),
        title: Text("Reset Password",style: TextStyle(fontSize: screenHeight *0.03,letterSpacing: screenWidth * 0.004),),
        centerTitle: true,
        toolbarHeight: 40,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/resetpassword.PNG',height: screenHeight * 0.4,),
                SizedBox(height: screenHeight * 0.03,),
                const Text("Enter your email address so we can",style: TextStyle(fontSize: 18),),
                const Text("help you recover your password.",style: TextStyle(fontSize: 18),),
                SizedBox(height: screenHeight * 0.03,),
                Material(
                  elevation: 4,
                  child: Container(
                    height: screenHeight *0.05,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: containerColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left:8.0),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            icon: Icon(Icons.mail)
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.07,),
                Container(
                  width: double.infinity,
                  height: screenHeight * 0.06,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.red,
                  ),
                  child:
                  TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) => const ResetPassword2()));
                  },
                    child:
                    const Text("Reset Password",style: TextStyle(color: Colors.white,fontSize: 18),),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
