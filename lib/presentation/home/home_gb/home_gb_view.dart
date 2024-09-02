import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/app/configs/app_size_configs.dart';
import 'package:getx_app/presentation/home/home_gb/home_gb_controller.dart';

class HomeGBScreen extends GetView<HomeGBController> {
  const HomeGBScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HeightWidth(context);
    final _ = controller;
    return Scaffold(
      appBar: AppBar(title: Text("GetX App")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Get Builder', style: TextStyle(fontSize: 25)).widgetTest('GetBuilder Title'),
          0.02.ph.widgetTest('first Sized Box'),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton.icon(onPressed: () => _.onCountChange(), 
            onLongPress: () => _.onCountHold(),
            icon: Icon(Icons.add), label: Text('Add')).widgetTest('Add Elevated Btn'),
            GetBuilder<HomeGBController>(
              id: 'count',
              init: HomeGBController(),
              builder: (ctxt) => Text('${_.count}', style: TextStyle(fontSize: 25)).widgetTest('GB count Text')),
            ElevatedButton.icon(onPressed: () => _.onCountChange(forAdd: false),onLongPress:() => _.onCountHold(forAdd: false), icon: Icon(Icons.remove), 
            label: Text('Remove')).widgetTest('Remove Elevated Btn'),
          ]),
          0.02.ph.widgetTest('2nd Sized Box'),
          Row(
            children: [
              Expanded(flex: 4, child: GetBuilder<HomeGBController>( id: 'age',
              init: HomeGBController(),builder: (ctxt)=> Slider(value: _.age, onChanged: (value) => _.onSlide(value), max: 70.0).widgetTest('GB Slider'))),
              Expanded(
                child: Card(
                  child: GetBuilder<HomeGBController>( id: 'age',
              init: HomeGBController(),builder: (ctxt)=> Text(_.age.toStringAsFixed(0), style: TextStyle(fontSize: 20)).center().widgetTest('GB Age')),
                ).marginOnly(right: 20),
              )
            ],
          ),
          0.02.ph.widgetTest('3rd Sized Box'),
          ElevatedButton(
            onPressed: ()=>_.getRandomColor(),
            child: Text('Random Color Generator', style: TextStyle(fontSize: 18))).widgetTest('Color Generator Btn'),

          0.02.ph.widgetTest('4th Sized Box'),
             GetBuilder<HomeGBController>(
              init: HomeGBController(),builder: (ctxt)=>Container(height: 80,width: w*0.9,color: Color(_.intColor)).widgetTest('GB Random Color box')),
        ],
      ),
    );
  }
}
