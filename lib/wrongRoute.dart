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
            SizedBox(height: Get.context.height*0.08,),
            Center(child:
               Image.network(
                 "https://user-images.githubusercontent.com/82330891/201894928-484d551c-2a27-48f5-9e22-1aeb6051a21e.gif",
                //  "https://ibb.co/31tmG2y",
                //  "https://i.ibb.co/VVXYrRW/wrong-Route.gif",
                   alignment : Alignment.center,
                 height: Get.context.height*0.6,
                 width: Get.context.width*0.8,
               )),
/// COPYYYYYY MEDIAQUERY
            SizedBox(height: Get.context.height*0.1),

            Center(
              child: HoverButton(
                elevation: 0.0,
                color: Colors.transparent,
                hoverColor: Color(0xffB4E59F) ,
                hoverTextColor: Color(0xff5c7dbe),
                hoverElevation: 0.0,
                textColor: Color(0xffB5CFFF),
                splashColor: Color(0xffB5CFFF),
                shape: StadiumBorder(side: BorderSide(color:  Color(0xffB4E59F) , width: 3.0 )) ,
                onpressed:(){ Get.back(); },

                child: Container(
                  height: Get.context.height*0.1,
                  width: Get.context.width*0.3,
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_back_ios_new ),
                      Text("Back",style: TextStyle(fontSize: 22.0 , fontWeight: FontWeight.bold),),
                    ],),
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
