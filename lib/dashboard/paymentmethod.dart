import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int _activeIndex = -1;
  Widget _paymentMethod(
  {
    required String logo,
    required String title,
    required int index,
}
      ){
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
         child: Row(
          children: [
            CircleAvatar(
              backgroundImage: Image.asset(logo,fit: BoxFit.cover,).image,
            ),
            const SizedBox(width: 10,),
            Expanded(child: Text(title)),
            IconButton(onPressed: (){
              setState(() {
                _activeIndex= index;
              });
            },
                icon: _activeIndex==index? const Icon(Icons.circle,color: Colors.red,) : const Icon(Icons.circle_outlined))
          ],
        ),
      ),
    );
  }
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
        title: const Text("Payment Method"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _paymentMethod(logo: 'assets/001.JPG', title: "MTN Mobile Money", index: 1),
            SizedBox(height: screenHeight * 0.02,),
            _paymentMethod(logo: "assets/002.PNG", title: "Orange Mobile Money", index: 2),
            SizedBox(height: screenHeight * 0.02,),
            _paymentMethod(logo: 'assets/003.PNG', title: "Master Card", index: 3),
            SizedBox(height: screenHeight * 0.02,),
            _paymentMethod(logo: "assets/004.PNG", title: "Visa card", index: 4),
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
