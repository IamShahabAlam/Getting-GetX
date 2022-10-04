import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen3 extends StatelessWidget {

 var Name = Get.parameters["Name"];     // Set the name of Parameter

  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;
    
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
                height: _h*0.08,
                width: _w*0.3,
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
                Text("Name : ${Name}\nAge : ${Get.parameters["Age"]}"),
              ],
            ),
          ),

        ],
      ),

      floatingActionButton: SizedBox(
        width: _w*0.25,
        height: _w*0.08 ,
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
