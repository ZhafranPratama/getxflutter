import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:september18/controller/controller.dart';

class mapel extends StatelessWidget {
  const mapel({super.key});

  @override
  Widget build(BuildContext context) {
    IniController ic = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Mapel'),
      ),
      body: Container(
          child: Column(
        children: [
          TextField(
            controller: ic.namaMapel,
            decoration: InputDecoration(labelText: 'Input Kode Mapel'),
          ),
          TextField(
            controller: ic.jnsMapel,
            decoration: InputDecoration(labelText: 'Input Nama Mapel'),
          ),
          ElevatedButton(
              onPressed: () {
                ic.addMapel(ic.namaMapel.text, ic.jnsMapel.text);
              },
              child: Text('Submit')),
          Expanded(
              child: Obx(() => ListView.builder(
                    shrinkWrap: true,
                    itemCount: ic.ListMapel.length,
                    itemBuilder: (context, index) {
                      String key = ic.ListMapel.keys.elementAt(index);
                      return ListTile(
                        leading: Text('${key}'),
                        trailing: Text('${ic.ListMapel[key]}'),
                      );
                    },
                  )))
        ],
      )),
    );
  }
}
