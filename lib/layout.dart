import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:september18/controller/controller.dart';
import 'package:september18/page_2.dart';

class layout extends StatelessWidget {
  const layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IniController ic = Get.put(IniController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  color: Colors.white,
                  height: 100,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/indec');
                          },
                          child: Text('Increase/Decrease', style: TextStyle(color: Colors.black))),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/listscr');
                          },
                          child: Text('List Screen', style: TextStyle(color: Colors.black))),
                    ],
                  ),
                ));
              },
              icon: Icon(Icons.list))
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextField(
              controller: ic.textcontroller,
              decoration: InputDecoration(
                hintText: "Nama Anda",
                labelText: "Nama",
              ),
              onSubmitted: (value) {
                // Get.defaultDialog(
                //     title: "Nama yang diinput",
                //     middleText: ic.textcontroller.text,
                //     onConfirm: (){
                //       Get.to(page2(), arguments: ic.textcontroller.text);
                //     }
                // );
                ic.ChangeNama2(ic.textcontroller.text);
                Get.snackbar('Nama yang diinput', ic.textcontroller.text,
                    snackPosition: SnackPosition.TOP);
              },
            ),
            SizedBox(
              height: 10,
            ),
            GetBuilder<IniController>(builder: (hc) {
              return Text(ic.nama2);
            }),
            SizedBox(
              height: 10,
            ),
            Obx(() => Row(
              children: [
                Text(ic.isOpen.value ? 'Open' : 'Closed'),
                Spacer(),
                Switch(
                    value: ic.isOpen.value,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.red,
                    inactiveTrackColor: Colors.red[200],
                    onChanged: (value) {
                      ic.setIsOpen(value);
                    }),
              ],
            ))
          ],
        ),
      ),
    );
  }
}