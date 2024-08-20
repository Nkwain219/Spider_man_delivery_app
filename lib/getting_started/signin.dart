import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:spider_man_delivery_app/dashboard/dashboard.dart';
import 'package:spider_man_delivery_app/onboarding_screens/onboardscreen3.dart';
import 'package:spider_man_delivery_app/getting_started/resetpassword.dart';
import 'package:spider_man_delivery_app/getting_started/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  bool _logIn( BuildContext context){
    if( _phoneController.text == _phoneNumber &&
    _passController.text == _password){
      setState(() {
        _loading = true;
      });

      Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => const DashBoard()));
      return true;
      }
    else
      {showDialog(context: context, 
          builder: (context) => Center(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.transparent,
              ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Wrong Credentials",style: TextStyle(
                        fontSize: 30,
                        decoration: TextDecoration.none,
                      ),),
                      Container(
                        color: Colors.grey[300],
                        child: TextButton(onPressed: (){
                          Navigator.pop(context);
                        },
                            child: const Text("Try again")),
                      )
                    ],
                  ),)),
          ));
      return false;}

  }
  void _isload(){
    if(_logIn(context)){
      Future.delayed(const Duration(seconds: 9 ),(){
          _loading? const Align(
          alignment: Alignment(0,0),
          child: SpinKitChasingDots(
          size: 50,
          color: Colors.blue,
          ),
          ): Container();
          });
    }
  }
  final String _password ="19022005Mims";
  final String _phoneNumber ="677225086";
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  bool _loading = false;
  bool _isobscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        IconButton(onPressed: (){
          Navigator.push(
              context,
          MaterialPageRoute(builder: (BuildContext context) => const OnBoardScreen3()));
        }, icon: const Icon(Icons.arrow_back_ios)),
        //Icon(Icons.arrow_back_ios),
        title: const Text("Sign In"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
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
                           Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextField(
                              controller: _phoneController,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
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
                                    controller: _passController,
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
                          _logIn(context);

                          /**Navigator.push(
                              context,
                              MaterialPageRoute(builder: (BuildContext context) => const DashBoard()));**/
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
                              const Text("Sign Up",style: TextStyle(color: Colors.red),),),

                        ],
                      ),
                    ],
                  ),
                ),

      /**Future.delayed(Duration(seconds: 3),(){
        _loading? Align(
          alignment: Alignment(0,0),
          child: SpinKitChasingDots(
            size: 50,
            color: Colors.blue,
          ),
        ): Container();
      });**/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
