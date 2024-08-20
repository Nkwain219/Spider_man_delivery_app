import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/getting_started/signin.dart';

class ResetPassword2 extends StatelessWidget {
  const ResetPassword2({super.key});
  final Color containerColor = const  Color(0xE7E2E2FF);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
                Image.asset('assets/resetpassword2.PNG',height: screenHeight * 0.4,),
                SizedBox(height: screenHeight * 0.02,),
                Text("Check your Email",style: TextStyle(fontWeight: FontWeight.bold,fontSize: screenWidth * 0.05),),
                SizedBox(height: screenHeight * 0.01,),
                Text("We have sent a password to recover your account",style: TextStyle(fontSize: screenWidth * 0.038),),
                Text("on email example@gmail.com.",style: TextStyle(fontSize: screenWidth * 0.04),),
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
                        MaterialPageRoute(builder: (BuildContext context) => const SignIn()));
                  },
                    child:
                    const Text("Open Mail",style: TextStyle(color: Colors.white,fontSize: 18),),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
