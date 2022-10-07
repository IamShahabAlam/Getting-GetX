import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen6 extends StatelessWidget {

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
                height: _h*0.08,
                width: _w*0.3,
                alignment: Alignment.center,
                child: Text("Screen 6", style: TextStyle(fontSize: 25.0, color:Colors.white),),
              ),
            ),

          ],
        ),

      floatingActionButton: SizedBox(
        width: _w*0.25 ,
        height: _w*0.08 ,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Screen 7"),
              Icon(Icons.arrow_forward_ios,),
            ],
          ),
          onPressed: (){
            Get.toNamed("/screen7");
          },
        ),
      ),
    );
  }
}
