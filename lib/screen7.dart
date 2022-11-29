import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'services.dart';

Future <void> main() async{
  await initServices();
  // runApp(Screen7());
}

Future <void> initServices() async{
  print("Starting services ....");
  await Get.putAsync<PermServices>(() async => await PermServices());
  print("All Services Started....");
}

class Screen7 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("GetX App"),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.purple,
              height: _h*0.08,
              width: _w*0.3,
              alignment: Alignment.center,
              child: Text("Screen 7", style: TextStyle(fontSize: 25.0, color:Colors.white),),
            ),
          ),

          Text("GETX Service"),

          ElevatedButton(
              onPressed: (){ Get.find<PermServices>().incrementCounter(); },
              child: Text("Increment")),


          Text("From All Binding: ${Get.find<Screen7Controller>().name} ") , 



        ],
      ),

      floatingActionButton: SizedBox(
        width: _w*0.32 ,
        height: _w*0.08 ,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Screen 8"),
              Icon(Icons.arrow_forward_ios,),
            ],
          ),
          onPressed: (){
            Get.toNamed("/screen8");
          },
        ),
      ),
    );
  }
}
