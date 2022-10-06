import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/services.dart';

class Screen4 extends StatelessWidget {

  Services servicesObj = Get.find<Services>();

  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

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
              height: Get.size.height*0.08,
              width: Get.size.width*0.3,
              alignment: Alignment.center,
              child: Text("Screen 4", style: TextStyle(fontSize: 25.0, color:Colors.white),),
            ),
          ),

          Container(child:
          Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Separate Parameter Passed Value"),
              Text("City : ${Get.parameters["City"]}"),
            ],
          )),

          Obx(() => Text("My name is ${servicesObj.name}") ),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                  onPressed: (){
                    servicesObj.name.value = servicesObj.name.value.toLowerCase();
                  },
                  child: Text("Lower Case")),

              SizedBox(width: _w*0.1,),

              ElevatedButton(
                  onPressed: (){
                    servicesObj.name.value = servicesObj.name.value.toUpperCase();
                  },
                  child: Text("Upper Case")),


            ],
          )

        ],
      ),

      floatingActionButton: SizedBox(
        width: _w*0.25 ,
        height: _w*0.08 ,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Screen 5"),
              Icon(Icons.arrow_forward_ios,),
            ],
          ),
          onPressed: (){
            Get.toNamed("/screen5");
          },
        ),
      ),
    );

  }
}
