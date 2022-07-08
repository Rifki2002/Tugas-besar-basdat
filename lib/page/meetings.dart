import 'package:flutter/material.dart';

class Meetings extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(137, 59, 55, 55),
          title: Text('Meetings'),
        ),
        body: Center(
            child: Text('Meetings',
                style: TextStyle(
                  fontSize: 60,
                ))),
      );
}
