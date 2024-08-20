import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/dashboard/Calls.dart';
import 'package:spider_man_delivery_app/dashboard/history.dart';
import 'package:spider_man_delivery_app/dashboard/home.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int currentPage = 0;
  void navigateBottomBar(index){
    setState(() {
      currentPage = index;
      print('the index is $currentPage');
    });
  }
  final List<Widget> pages = [
    const HomePage(),
    const History(),
    const Calls(),

  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(16),topLeft:Radius.circular(16)),
        child: BottomNavigationBar(
          backgroundColor: Colors.grey[300],
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          onTap: navigateBottomBar,
          currentIndex: currentPage,
          items:   [
            BottomNavigationBarItem(icon: Icon(Icons.home,size:screenWidth * 0.08,),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt,size:screenWidth * 0.08),
                label: 'History'),
            BottomNavigationBarItem(icon: Icon(Icons.phone,size:screenWidth * 0.08),
                label: 'Call')
          ],
        ),
      ),
    );
  }
}

