import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/dashboard.dart';
import 'package:spider_man_delivery_app/onboardscreen3.dart';
import 'package:spider_man_delivery_app/resetpassword.dart';
import 'package:spider_man_delivery_app/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  bool _isobscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        IconButton(onPressed: (){
          Navigator.push(
              context,
          MaterialPageRoute(builder: (BuildContext context) => OnBoardScreen3()));
        }, icon: const Icon(Icons.arrow_back_ios)),
        //Icon(Icons.arrow_back_ios),
        title: const Text("Sign In"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Image(image: AssetImage('assets/signin.PNG'),height: 250,),
                const SizedBox(height: 60,),
                Material(
                  elevation: 4,
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300],
                    ),
                    child:
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone Number",
                          icon: Icon(Icons.phone)
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Material(
                  elevation: 4,
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    /**decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8.0),
                    ),**/
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.grey[300],
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              obscureText: _isobscured,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  icon: Icon(Icons.mail),
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
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){
                    Navigator.push(
                        context,
                    MaterialPageRoute(builder: (BuildContext context) => const ResetPassword()));
                  },
                      child:
                      const Text("Forgot your password?",style: TextStyle(color: Colors.black54,fontSize: 15),)),
                ),
                const SizedBox(height: 50,),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.red,
                  ),
                  child:TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) => const DashBoard()));
                  },
                      child:
                  const Text("Sign In",style: TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 18),)),
                ),
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => const SignUp()));
                    },
                        child:
                    const Text("Sign Up",style: TextStyle(color: Colors.red),),)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
