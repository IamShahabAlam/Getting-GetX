import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/app/configs/app_size_configs.dart';
import 'package:getx_app/presentation/general/general_controller.dart';

class Screen3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
HeightWidth(context);
 var name = Get.parameters["Name"];     // Set the name of Parameter
    
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX App"),
        centerTitle: true,
      ),

      body: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              alignment: Alignment.center,
              color: Colors.purple,
                height: h*0.08,
                width: w*0.3,
                child: Text("Screen 3" , style: TextStyle(fontSize: 25 , color: Colors.white),)),
          ),

          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(0.0),
              border: Border(bottom: BorderSide(color: Colors.purple), top: BorderSide(color: Colors.purple))
            ),
            child: Column(
              children: [
                Text("The inline Parameter is Passed with Get.toNamed() From Screen2 to Screen3:" , style: TextStyle(color: Colors.purple),),
                SizedBox(height: 10.0,),
                Text("Name : ${name}\nAge : ${Get.parameters["Age"]}"),
              ],
            ),
          ),

          // Getx of type Controller

          GetX<GeneralController>(       //  without initiating in Stl Widget
            init: GeneralController(),
            builder: (_)
            {
              return Text("By Getx Of Type Controller: \n\n My Name is ${_.name}");
            }
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
              Text("Screen 4"),
              Icon(Icons.arrow_forward_ios,),
            ],
          ),
          onPressed: (){
            Get.toNamed("/screen4/Karachi");
          },
        ),
      ),
    );
  }
}
