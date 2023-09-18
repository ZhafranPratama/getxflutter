import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:september18/controller/controller.dart';

class indec extends StatelessWidget {
  const indec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IniController ic = Get.put(IniController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Increase/Decrease'),
      ),
      body: Container(
        child: Center(
          child: Row(
            children: [
              IconButton(onPressed: (){ic.increaseX();}, icon: Icon(Icons.add)),
              Spacer(),
              Obx(() => Text(ic.x.toString())),
              Spacer(),
              IconButton(onPressed: (){ic.decreaseX();}, icon: Icon(Icons.remove)),
            ],
          ),
        ),
      ),
    );
  }
}
