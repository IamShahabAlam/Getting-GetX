import 'package:flutter/material.dart';
import 'package:get/get.dart';



class PageNavBtn extends StatelessWidget {
 PageNavBtn({this.name, this.pagename});

  final String name, pagename;
  // final Function onpressed;

  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;


    return   ElevatedButton(
      child: Container(
          alignment: Alignment.center,
          height: _h*0.08 ,
          width: _w*0.05,
          child: Text(name)),
      onPressed: (){Get.toNamed(pagename);},
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        alignment: Alignment.center,
        backgroundColor: Colors.purpleAccent,

      ),);
  }
}
