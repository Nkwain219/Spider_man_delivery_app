import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _istoggled = false;
  bool _toggled = true;
  bool _toggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text("Settings"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(
              ),
              child:
              Row(
                children: [
                  const Icon(Icons.g_translate,color: Colors.red,),
                  const SizedBox(width: 30,),
                  const Expanded(
                      child: Text("Language",style: TextStyle(fontSize: 18),)),
                  IconButton(onPressed: (){},
                      icon: const Icon(Icons.keyboard_arrow_down,
                      color: Colors.red,size: 40,)),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child:
              Row(
                children: [
                  const Icon(Icons.location_on_rounded,color: Colors.red,),
                  const SizedBox(width: 30,),
                  const Expanded(
                      child: Text("Location",style: TextStyle(fontSize: 18),)),
                  Stack(
                    children: [
                      Text(_istoggled? "ON" : "OFF"),
                      IconButton(onPressed: (){
                        setState(() {
                          _istoggled = !_istoggled;
                        });
                      }, icon: _istoggled? const Icon(Icons.toggle_on,size: 30,) : const Icon(Icons.toggle_off,size: 30,),
                        color: _istoggled? Colors.grey : Colors.red,

                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white
              ),
              child:
              Row(
                children: [
                  const Icon(Icons.phone,color: Colors.red,),
                  const SizedBox(width: 30,),
                  const Expanded(
                      child: Text("Calls",style: TextStyle(fontSize: 18),)),
                  IconButton(onPressed: (){
                    setState(() {
                      _toggled = !_toggled;
                    });
                  }, icon: _toggled? const Icon(Icons.toggle_on,size: 30,) : const Icon(Icons.toggle_off,size: 30,),
                    color: _toggled? Colors.grey : Colors.red,

                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
              ),
              child:
              Row(
                children: [
                  const Icon(Icons.volume_up,color: Colors.red,),
                  const SizedBox(width: 30,),
                  const Expanded(
                      child: Text("Sounds and Notification",style: TextStyle(fontSize: 18),)),
                  IconButton(onPressed: (){
                    setState(() {
                      _toggle = !_toggle;
                    });
                  }, icon: _toggle? const Icon(Icons.toggle_on,size: 30,) : const Icon(Icons.toggle_off,size: 30,),
                    color: _toggle? Colors.grey : Colors.red,

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
