import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/services.dart';
import 'components.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {

  var data = Get.arguments;   // saving arguments from screen 2 in var data
  Services servicesObj = Get.find<Services>();

  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("GetX App"),
        actions: [
          TextButton(
              onPressed: (){
            servicesObj.BottomSheet();
          },
              child: Icon(Icons.filter_list))
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            Row(
              children: [
                Text("Switch App Theme"),
                ElevatedButton(onPressed: (){ servicesObj.Theme();}, child: Icon(Icons.light_mode_outlined)),
              ],
            ),
            
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.3,
              color: Colors.purple,
                child: Text("Screen 1" , style: TextStyle(fontSize: 25, color: Colors.white),)),
    
                Text("Screen Height : ${_h} \n\n Screen Width : ${_w}"),

            Text("Passed String Data From screen2 : $data"),

            Obx(() => Text("${servicesObj.num}" ,style: TextStyle(fontSize: 25,),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                ElevatedButton(
                    onPressed: (){ servicesObj.increment(); } ,
                    child: Text("Increment +")),

                ElevatedButton(
                    onPressed: (){
                      servicesObj.decrement();

                      servicesObj.snack();
                    },
                    child: Text("Decrement -"))
              ],
            ),

            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PageNavBtn(name: "1", pagename: "/screen1"),
                PageNavBtn(name: "2", pagename: "/screen2"),
                PageNavBtn(name: "3", pagename: "/screen3"),
                PageNavBtn(name: "4", pagename: "/screen4/Karachi"),

              ],
            ),

            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PageNavBtn(name: "5", pagename: "/screen5"),
              PageNavBtn(name: "6", pagename: "/screen6"),
              PageNavBtn(name: "7", pagename: "/screen7"),
              PageNavBtn(name: "8", pagename: "/screen8"),

            ],),



            

          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.to(() => Screen2() ,
              arguments: "This Data is from the Screen 1",
            transition: Transition.leftToRight,
           // fullscreenDialog: true,         // It makes page a full screen dialog (with cross on top),
            // curve: Curves.easeIn,
        );},
        tooltip: 'Increment',
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
