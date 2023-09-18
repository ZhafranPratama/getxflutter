import 'package:flutter/material.dart';

class listscr extends StatelessWidget {
  const listscr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Screen'),
      ),
      body: Container(
        child: Text('Ini List Screen'),
      ),
    );
  }
}
