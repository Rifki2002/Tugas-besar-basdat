import 'package:flutter/material.dart';
import 'package:kegiatan_1/page/contacts.dart';

class ContactController extends ChangeNotifier {
  List<Contact> kContacts = [
    Contact(fullName: 'M.Rifki Yohandy', email: 'rifkiyohandy2002@gmail.com'),
    Contact(fullName: 'Aufa Rizky', email: 'Aufarizky@gmail.com'),
    Contact(fullName: 'Thurzi Hamdani', email: 'Thurzihamdani@gmail.com'),
  ];
  void deleteItem(int index) {
    kContacts.removeAt(index);
    notifyListeners();
  }

  void addItem(String nama, String email) {
    kContacts.add(Contact(fullName: nama, email: email));
    notifyListeners();
  }

  void editItem(int index, String newName) {
    kContacts[index] =
        Contact(fullName: newName, email: kContacts[index].email);
    notifyListeners();
  }
}
