import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Services extends GetxController{

  var num = 1.obs;  // Obs makes it dynamic/Reactive/Observable (it will update the var in app)

  increment(){
    num += 1;
  }

  decrement(){
    num -= 1;
  }

   snack(){
    Get.snackbar(
        "Decrement",
        "Going Down Sir!!!",
        snackPosition: SnackPosition.BOTTOM,
        // borderColor: Color(0xffA020F0),
        icon: Icon(Icons.trending_down, color: Colors.purple,),
    );
   }

    Dialogbox(){
     Get.defaultDialog(
      title: "LogOut",
      content: Text("Do you want to logout ?"),
      actions: [
        TextButton(
            onPressed: (){},
            child: Text("Cancel" , style: TextStyle(color: Colors.purple),)),

        ElevatedButton(
            onPressed: (){},
            child: Text("Logout")),
       ],
      );
    }
    
    BottomSheet(){
      Get.bottomSheet(
          Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Text("Select The State Management", style: TextStyle(fontSize: 22.0),),
              Text("GetX",),
              Text("BLoC",),
              Text("Provider",),
              Text("RiverPod",),
            ],
          ),

        backgroundColor: Colors.purple,
        barrierColor: Colors.black.withOpacity(0.6),
      );
    }

    Theme(){
      Get.changeTheme(Get.isDarkMode?ThemeData.light():ThemeData.dark());
    }
}