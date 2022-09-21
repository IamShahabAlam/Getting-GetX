import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/services.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {

  // Services service = Get.find<Services>();
  Services servicesObj = Get.find<Services>();
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
            Obx(() => Text("${servicesObj.num}")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                ElevatedButton(
                    onPressed: (){ servicesObj.increment(); } ,
                    child: Text("Increment +")),

                ElevatedButton(
                    onPressed: (){
                      servicesObj.decrement();
                    },
                    child: Text("Decrement -"))
              ],
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
