import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/services.dart';

class Screen6 extends StatelessWidget {
  
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
                height: _h*0.08,
                width: _w*0.3,
                alignment: Alignment.center,
                child: Text("Screen 6", style: TextStyle(fontSize: 25.0, color:Colors.white),),
              ),
            ),

  // WORKERS    ----------------------
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              // height: _h*0.18,
              width: _w*0.8,
              color: Colors.purple.withOpacity(0.3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text ("WORKERS" , style: TextStyle( fontSize:18 , fontWeight: FontWeight.bold, color: Colors.purple),),

                  Text("Debounce"),

                  Text("${servicesObj.num}"),
                  
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    child: TextField(
                      decoration: InputDecoration(focusColor: Colors.purple,
                      fillColor: Colors.purple.withOpacity(0.1)),
                      onChanged: (val){ servicesObj.increment(); },
                    ),
                  )

                ],
              ),
            ),

   // INTERNATIONALIZATION    ------------------
            Container(
              alignment: Alignment.center,
              // padding: EdgeInsets.all(20),
              height: _h*0.4,
              width: _w*0.8,
              color: Colors.purple.withOpacity(0.3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(height: _h*0.01,),
                  Text("INTERNATIONALIZATION" , style: TextStyle( fontSize:20 , fontWeight: FontWeight.bold, color: Colors.purple),),

                  Text("Hello Pakistan".tr , style: TextStyle( fontSize:18 , fontWeight: FontWeight.bold),),

                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){ servicesObj.translate("en", "US");  }, child: Text("English")),

                      ElevatedButton(onPressed: (){ servicesObj.translate("ur", "PK"); }, child: Text("Urdu")),
                    ],
                  ),

                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      ElevatedButton(onPressed: (){ servicesObj.translate("ch", "CH"); } , child: Text("Chinese")),

                      ElevatedButton(onPressed: (){ servicesObj.translate("kr", "KR"); }, child: Text("Korean")),

                      ElevatedButton(onPressed: (){ servicesObj.translate("gr", "GR"); }, child: Text("Greek")),

                    ],
                  ),



                ],
              ),
            )




          ],
        ),

      floatingActionButton: SizedBox(
        width: _w*0.32 ,
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
