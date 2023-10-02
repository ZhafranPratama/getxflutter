import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:september18/controller/controller.dart';

class kelas extends StatelessWidget {
  const kelas({super.key});

  @override
  Widget build(BuildContext context) {
    IniController ic = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Ganti kelas'),
      ),
      body: Container(
        child: Column(
          children: [
          TextField(
          controller: ic.namaKelas,
          decoration: InputDecoration(
            labelText: "Kelas",
          ),
        ),
          SizedBox(
            height: 10,
          ),
            ElevatedButton(
                onPressed: (){
                  ic.ChangeKelas(ic.namaKelas.text);
                },
                child: Text('Submit')),
            SizedBox(
              height: 10,
            ),
          Obx(() => Text(ic.kelas.value))
          ]
      ),
      )
    );
  }
}
