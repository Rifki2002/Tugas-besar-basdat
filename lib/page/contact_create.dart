import 'package:flutter/material.dart';
import 'package:kegiatan_1/page/contact_controller.dart';
import 'package:provider/provider.dart';

class ContactCreate extends StatefulWidget {
  const ContactCreate({Key? key}) : super(key: key);

  @override
  State<ContactCreate> createState() => _ContactCreateState();
}

class _ContactCreateState extends State<ContactCreate> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "Nama ",
            style: TextStyle(color: Colors.white),
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "New Name",
              hintStyle: TextStyle(color: Colors.grey),
            ),
            controller: nameController,
          ),
          Text(
            "Email ",
            style: TextStyle(color: Colors.white),
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "New Pass",
              hintStyle: TextStyle(color: Colors.grey),
            ),
            controller: emailController,
          ),
          ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    emailController.text.isNotEmpty) {
                  Provider.of<ContactController>(context, listen: false)
                      .addItem(nameController.text, emailController.text);
                }
              },
              child: Text("Add"))
        ],
      ),
    );
  }
}
