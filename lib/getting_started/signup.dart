import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/getting_started/signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isobscured = true;
  Color containerColor = const Color(0xE7E2E2FF);
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
        title: Text("Sign Up",style: TextStyle(fontSize: screenHeight *0.03,letterSpacing: screenWidth * 0.008),),
        centerTitle: true,
        toolbarHeight: 40,
        elevation: 0,
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Image.asset('assets/SignUp.PNG',height: screenHeight * 0.3,)),
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
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name",
                        icon: Icon(Icons.person_pin_rounded)
                      ),
                    ),
                  ),
                ),
              ),
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
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone Number",
                          icon: Icon(Icons.phone),
                      ),
                    ),
                  ),
                ),
              ),
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
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            obscureText: _isobscured,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                icon: Icon(Icons.lock)
                            ),
                          ),
                        ),
                        IconButton(onPressed: (){
                          setState(() {
                            _isobscured = !_isobscured;
                          });
                        }, icon: _isobscured? const Icon(Icons.visibility_off) : const Icon(Icons.visibility))
                      ],
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
                TextButton(onPressed: (){},
                    child:
                const Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 18),),),
              ),
              SizedBox(height: screenHeight * 0.06,),
              //const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) => const SignIn()));
                  },
                      child: const Text("Sign In",style: TextStyle(color: Colors.red),))
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
