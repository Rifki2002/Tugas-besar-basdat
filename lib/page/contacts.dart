import 'package:flutter/material.dart';
import 'package:kegiatan_1/page/contact_controller.dart';
import 'package:kegiatan_1/page/contact_create.dart';
import 'package:provider/provider.dart';

class ContactsPage extends StatelessWidget {
  static const route = '/contacts';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Contacts"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => ContactCreate()));
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ))
          ],
          backgroundColor: Color.fromARGB(137, 59, 55, 55),
        ),
        body: new ContactList());
  }
}

class ContactList extends StatelessWidget {
  ContactList();
  TextEditingController namaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ContactController contactController =
        Provider.of<ContactController>(context);
    return new ListView.builder(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext builder) {
                  return Column(
                    children: [
                      Text("nama"),
                      TextField(
                        controller: namaController,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (namaController.text.isNotEmpty) {
                              Provider.of<ContactController>(context,
                                      listen: false)
                                  .editItem(index, namaController.text);
                            }
                          },
                          child: Text("Ganti"))
                    ],
                  );
                });
          },
          child: new _ContactListItem(contactController.kContacts[index], (() {
            contactController.deleteItem(index);
          })),
        );
      },
      itemCount: contactController.kContacts.length,
    );
  }
}

class _ContactListItem extends ListTile {
  _ContactListItem(Contact contact, VoidCallback onDelete)
      : super(
            title: new Text(
              contact.fullName,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: new Text(
              contact.email,
              style: TextStyle(color: Colors.white),
            ),
            leading: new CircleAvatar(child: new Text(contact.fullName[0])),
            trailing: IconButton(
                onPressed: onDelete,
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                )));
}

class Contact {
  final String fullName;
  final String email;

  Contact({required this.fullName, required this.email});
}
