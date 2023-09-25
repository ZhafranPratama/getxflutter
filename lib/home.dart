import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:september18/controller/controller.dart';
import 'package:september18/page_2.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

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
                  height: 150,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/indec');
                          },
                          child: Text('Increase/Decrease',
                              style: TextStyle(color: Colors.black))),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/listscr');
                          },
                          child: Text('Add Siswa',
                              style: TextStyle(color: Colors.black))),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/addmapel');
                          },
                          child: Text('Add Mapel',
                              style: TextStyle(color: Colors.black))),
                    ],
                  ),
                ));
              },
              icon: Icon(Icons.list))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 1000,
                height: 30,
                color: Colors.orange,
                child: Text(
                  'KELAS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                width: 1000,
                padding: EdgeInsets.symmetric(horizontal: 17),
                color: Colors.yellow,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Jumlah Siswa: ',
                              style: TextStyle(fontSize: 15),
                            ),
                            Obx(() => Text(ic.x.toString()))
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  ic.increaseX();
                                },
                                icon: Icon(Icons.add)),
                            IconButton(
                                onPressed: () {
                                  ic.decreaseX();
                                },
                                icon: Icon(Icons.remove)),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Obx(() => Row(
                          children: [
                            Text(
                              ic.isOpen.value ? 'Open' : 'Closed',
                              style: TextStyle(fontSize: 15),
                            ),
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
              Container(
                  width: 1000,
                  height: 30,
                  color: Colors.orange,
                  child: Text(
                    'NAMA SISWA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
              Container(
                color: Colors.blue,
                height: 200,
                child: Flexible(
                    child: Obx(() => ListView.builder(
                          shrinkWrap: true,
                          itemCount: ic.SiswaName.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(
                                '${ic.SiswaName.value[index]}',
                                style: TextStyle(fontSize: 15),
                              ),
                            );
                          },
                        ))),
              ),
              Container(
                width: 1000,
                height: 30,
                color: Colors.orange,
                child: Text(
                  'MATA PELAJARAN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 200,
                child: Flexible(
                    child: Obx(() => ListView.builder(
                          shrinkWrap: true,
                          itemCount: ic.ListMapel.length,
                          itemBuilder: (context, index) {
                            String key = ic.ListMapel.keys.elementAt(index);
                            return ListTile(
                              leading: Text(
                                '${key}',
                                style: TextStyle(fontSize: 15),
                              ),
                              trailing: Text(
                                '${ic.ListMapel[key]}',
                                style: TextStyle(fontSize: 15),
                              ),
                            );
                          },
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
