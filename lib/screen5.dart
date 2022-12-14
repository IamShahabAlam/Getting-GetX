import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/services.dart';

class Screen5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    Services servicesObj = Get.find<Services>();
    // if u don't initialised it here, then initialised it where u want to use

    return Scaffold(
      appBar:  AppBar(
        title: Text("GetX App"),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Center(
      child: Container(
      color: Colors.purple,
        height: _h*0.08,
        width: _w*0.3,
        alignment: Alignment.center,
        child: Text("Screen 5", style: TextStyle(fontSize: 25.0, color:Colors.white),),
      ),
    ),

          Text("Simple State Management", style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),

          GetBuilder(
              init: Services() ,
              builder: (servicesObj) {
                          return Text("Simple No : ${servicesObj.count}");
              } ),

          ElevatedButton(
              onPressed: (){
               // Get.put(Services()).simpleIncrement();     // Here we r initialising by Get.put coz we haven't initialised it in Stl widget
                  servicesObj.simpleIncrement();             // Here we have initialised Get in Stl widget
              },
              child: Text("Simple Increment +")),


          // ---------------------------------------------------------

          Text("GetX Controller Lifecycle Method" , style: TextStyle(fontWeight: FontWeight.bold),),

          GetBuilder<Services>(
              builder: (servicesObj) {
            return Text("${servicesObj.count}");
          } ),

          // Unique ID with GetBuilder

          Container(
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            color: Colors.purple.withOpacity(0.6),
            // height: _h*0.25,
              width: _w*0.8,
              child: Column(
                children: [
                  Text("Unique Id with GetBuilder", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GetBuilder<Services>(builder: (servicesObj) { return Text("Initial Value : ${servicesObj.count}"); }),
                      Divider(height: 20 ,thickness: 20.0, color: Colors.white,),

                      GetBuilder<Services>( id: "updated" , builder: (servicesObj) => Text("Updated Value : ${servicesObj.count}"))
                    ],
                  ),

                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){ servicesObj.updateCount();},
                      child: Text("Update +"))
                ],
              )),



    ],),

      // ---------------------------------------------------------

      floatingActionButton: SizedBox(
        width: _w*0.35 ,
        height: _w*0.1 ,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Screen 6"),
              Icon(Icons.arrow_forward_ios,),
            ],
          ),
          onPressed: (){
            Get.toNamed("/screen6");
          },
        ),
      ),
    );
  }
}
