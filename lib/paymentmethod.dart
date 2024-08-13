import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool _check = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios_new)),
        title: Text("Payment Method"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.06,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: Image.asset('assets/001.JPG',fit: BoxFit.cover,).image,
                    ),
                    SizedBox(width: 10,),
                    Expanded(child: Text("MTN Mobile Money")),
                    IconButton(onPressed: (){
                      setState(() {
                        _check = !_check;  
                      });
                    },
                        icon: _check? Icon(Icons.circle_outlined,color: Colors.red,) :
                    Icon(Icons.check_circle_outline_outlined,color: Colors.red,))
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02,),
            Container(
              height: screenHeight * 0.06,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: Image.asset('assets/002.PNG',fit: BoxFit.cover,).image,
                    ),
                    SizedBox(width: 10,),
                    Expanded(child: Text("Orange Mobile Money")),
                    IconButton(onPressed: (){
                      setState(() {
                        _check = !_check;
                      });
                    },
                        icon: _check? Icon(Icons.circle_outlined,color: Colors.red,) :
                        Icon(Icons.check_circle_outline_outlined,color: Colors.red,))
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02,),
            Container(
              height: screenHeight * 0.06,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: Image.asset('assets/003.PNG',fit: BoxFit.cover,).image,
                    ),
                    SizedBox(width: 10,),
                    Expanded(child: Text("Master Card Pay")),
                    IconButton(onPressed: (){
                      setState(() {
                        _check = !_check;
                      });
                    },
                        icon: _check? Icon(Icons.circle_outlined,color: Colors.red,) :
                        Icon(Icons.check_circle_outline_outlined,color: Colors.red,))
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02,),
            Container(
              height: screenHeight * 0.06,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: Image.asset('assets/004.PNG',fit: BoxFit.cover,).image,
                    ),
                    SizedBox(width: 10,),
                    Expanded(child: Text("Visa Card Pay")),
                    IconButton(onPressed: (){
                      setState(() {
                        _check = !_check;
                      });
                    },
                        icon: _check? Icon(Icons.circle_outlined,color: Colors.red,) :
                        Icon(Icons.check_circle_outline_outlined,color: Colors.red,))
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.1,),
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
                    MaterialPageRoute(builder: (BuildContext context) => const PaymentMethod()));
              },
                  child:
                  const Text("Make Payment",style: TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 18),)),
            ),
          ],
        ),
      ),
    );
  }
}
