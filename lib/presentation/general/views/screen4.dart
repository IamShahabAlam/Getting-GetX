import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/app/configs/app_size_configs.dart';
import 'package:getx_app/presentation/general/general_controller.dart';

class Screen4 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    HeightWidth(context);
  GeneralController servicesObj = Get.find<GeneralController>();

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
              height: h*0.08,
              width: w*0.3,
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

              SizedBox(width: w*0.1,),

              ElevatedButton(
                  onPressed: (){
                    servicesObj.name.value = servicesObj.name.value.toUpperCase();
                  },
                  child: Text("Upper Case")),


            ],
          ),

        ],
      ),

      floatingActionButton: SizedBox(
        width: w*0.25 ,
        height: w*0.08 ,
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
