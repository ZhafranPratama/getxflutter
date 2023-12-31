import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/controller.dart';

class listscr extends StatelessWidget {
  const listscr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IniController ic = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Siswa'),
      ),
      body: Container(
          child: Column(
        children: [
          TextField(
            controller: ic.namaSiswa,
            decoration: InputDecoration(labelText: 'Input Nama'),
          ),
          ElevatedButton(
              onPressed: () {
                ic.tambahKeList(ic.namaSiswa.text);
              },
              child: Text('Submit')),
          Expanded(
              child: Obx(() => ListView.builder(
                    shrinkWrap: true,
                    itemCount: ic.SiswaName.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('${ic.SiswaName.value[index]}'),
                      );
                    },
                  )))
        ],
      )),
    );
  }
}
