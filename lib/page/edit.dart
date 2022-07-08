import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  final String nama;

  const Edit({Key? key, required this.nama}) : super(key: key);
  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  String nama = ' ';
  String email = 'Rifki@gmail,com';
  late TextEditingController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TextEditingController(text: widget.nama);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(137, 59, 55, 55),
          title: Text('Edit'),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              hintStyle: TextStyle(color: Color.fromARGB(255, 131, 131, 131)),
              hintText: 'Change Username?',
            ),
            controller: _controller,
            onSubmitted: (value) {
              Navigator.pop(context, _controller.text);
            },
          ),
        ),
      );
}
