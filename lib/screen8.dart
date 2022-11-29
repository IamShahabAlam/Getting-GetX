import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen8 extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("GetX App"),

      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                 Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height*0.08,
                width: MediaQuery.of(context).size.width*0.3,
                color: Colors.purple,
                  child: Text("Screen 8" , style: TextStyle(
                    fontSize: 25, color: Colors.white),)),

                    
    
          ],
        ),
      ),
    );
  }
}
