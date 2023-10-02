import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:september18/home.dart';
import 'package:september18/page_3.dart';
import 'package:september18/page_4.dart';
import 'package:september18/page_5.dart';
import 'package:september18/page_6.dart';
import 'layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=> MyApp()),
        GetPage(name: '/indec', page: ()=> indec()),
        GetPage(name: '/listscr', page: ()=> listscr()),
        GetPage(name: '/addmapel', page: ()=> mapel()),
        GetPage(name: '/chngkelas', page: ()=> kelas()),
      ],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: home()
    );
  }
}

