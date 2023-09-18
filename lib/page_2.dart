import 'package:flutter/material.dart';
import 'package:get/get.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Container(
        child: Center(child: Text(data)),
      ),
    );
  }
}
