import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/app/configs/app_size_configs.dart';
import 'package:getx_app/app/utils/components.dart';
import 'package:getx_app/presentation/general/general_controller.dart';
import 'package:getx_app/routes/page_names.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HeightWidth(context);
    var data = Get.arguments; // saving arguments from screen 2 in var data
    GeneralController controller = Get.find<GeneralController>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("GetX App"),
        actions: [
          TextButton(
              onPressed: () {
                controller.BottomSheet();
              },
              child: Icon(Icons.filter_list))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Switch App Theme"),
              0.1.pw,
              ElevatedButton(
                  onPressed: () {
                    controller.Theme();
                  },
                  child: Icon(Icons.light_mode_outlined))
            ]),
            0.02.ph,

            Container(
                alignment: Alignment.center,
                height: h * 0.08,
                width: w * 0.3,
                color: Colors.purple,
                child: Text(
                  "Screen 1",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),

            0.02.ph,
            Text("Screen Height : ${h.toInt()} \n\n Screen Width : ${w.toInt()}"),

            Text("Passed String Data From screen2 : $data"),
            0.02.ph,

            Obx(() => Text(
                  "${controller.num}",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )),
            // 0.02.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: Text("Increment +")),
                ElevatedButton(
                    onPressed: () {
                      controller.decrement();
                      controller.snack();
                    },
                    child: Text("Decrement -"))
              ],
            ),
            0.02.ph,

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              PageNavBtn(name: "1", pagename: "/screen1"),
              PageNavBtn(name: "2", pagename: "/screen2"),
              PageNavBtn(name: "3", pagename: "/screen3"),
              PageNavBtn(name: "4", pagename: "/screen4/Karachi"),
            ]),
            0.02.ph,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PageNavBtn(name: "5", pagename: "/screen5"),
                PageNavBtn(name: "6", pagename: "/screen6"),
                PageNavBtn(name: "7", pagename: "/screen7"),
                PageNavBtn(name: "8", pagename: "/screen8"),
              ],
            ),
            0.02.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () => Get.toNamed(PageNames.homeOBX), child: Text('OBX')).expanded(),
                ElevatedButton(onPressed: () => Get.toNamed(PageNames.homeGB), child: Text('GB')).marginSymmetric(horizontal: 2).expanded(),
                ElevatedButton(onPressed: () => Get.toNamed(PageNames.homeSTF), child: Text('STF')).marginSymmetric(horizontal: 2).expanded(),
                ElevatedButton(onPressed: () => Get.toNamed(PageNames.homeSTF_VN), child: Text('STFVN')).expanded(),
              ],
            ).marginSymmetric(horizontal: 10)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String backData = await Get.toNamed(PageNames.screen2, arguments: "From Screen 1 as Arguments", parameters: {'Data': 'From Screen 1 as Paramaters'}
              // fullscreenDialog: true,         // It makes page a full screen dialog (with cross on top),
              // curve: Curves.easeIn,
              );
          // .then((value) {
          // Get.dialog(Text('After Coming back its working'), barrierDismissible: true);
          // Timer(Duration(seconds: 2), (){Get.back();});
          // });

          print(backData);
        },
        tooltip: 'Increment',
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
