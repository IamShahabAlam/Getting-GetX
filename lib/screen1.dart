import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/services.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {

  Services service = Get.find<Services>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SCREEN 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Obx(() {
              return  Text( "${service.num}"
          );
        }),

            Center(
              child: ElevatedButton(onPressed: (){
                service.IncreaseNum();
              },
                  child: Text("Increment +")),
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){ Get.to(Screen2());},
        tooltip: 'Increment',
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
