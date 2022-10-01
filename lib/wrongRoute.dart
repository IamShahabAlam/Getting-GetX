import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';


class WrongRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Full Sized GIF is here !!
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: Get.size.height*0.08,),
            Center(child:
               Image.network( "https://i.ibb.co/VVXYrRW/wrong-Route.gif",
                   alignment : Alignment.center,
               )),

            Container(
              color: Colors.transparent,
              height: Get.size.height*0.07,
              width: Get.size.width*0.3,
              margin: EdgeInsets.all(20.0),

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  surfaceTintColor: Color(0xffB4E59F),
                  // onSurface: Color(0xffB4E59F) ,
                  shadowColor : Colors.transparent ,
                  elevation: 0.0,
                  onPrimary: Color(0xffB5CFFF),
                  primary: Colors.transparent,
                    shape: StadiumBorder(side: BorderSide(color: Color(0xffB4E59F) , width: 3.0  ))
                ),
                onPressed: (){ Get.back(); },
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Icon(Icons.arrow_back_ios_new),
                  Text("Back",style: TextStyle(fontSize: 22.0 , fontWeight: FontWeight.bold),),
                ],),
              ),
            ),

            HoverButton(
              elevation: 0.0,
              color: Colors.transparent,
              hoverColor: Color(0xffB4E59F) ,
              hoverTextColor: Color(0xffB5CFFF),
              onpressed:(){ Get.back(); },
              child: Container(
                height: Get.size.height*0.07,
                width: Get.size.width*0.3,
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.arrow_back_ios_new),
                    Text("Back",style: TextStyle(fontSize: 22.0 , fontWeight: FontWeight.bold),),
                  ],),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
