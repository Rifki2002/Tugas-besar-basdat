import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:kegiatan_1/page/contacts.dart';
import 'package:kegiatan_1/home.dart';

class Meet_Chat extends StatefulWidget {
  static const route = '/meet&chat';
  @override
  State<Meet_Chat> createState() => _Meet_ChatState();
}

class _Meet_ChatState extends State<Meet_Chat> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.border_color_rounded),
          )
        ],
        centerTitle: true,
        backgroundColor: Color.fromARGB(137, 59, 55, 55),
        title: Text('Meet & Chat'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
          Widget>[
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 33,
          width: 350,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Search',
              textAlign: TextAlign.left,
            ),
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 58, 56, 56),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                textStyle:
                    const TextStyle(color: Color.fromARGB(255, 49, 47, 47))),
          ),
        ),
        Container(
            margin: EdgeInsets.all(20),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 63,
                          width: 63,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.camera,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(color: Colors.orange)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'New Meeting',
                          style: TextStyle(color: Colors.grey),
                        )
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 63,
                          width: 63,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.add_rounded,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 21, 66, 213),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: Color.fromARGB(255, 21, 66, 213))),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Join',
                          style: TextStyle(color: Colors.grey),
                        )
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 63,
                          width: 63,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.calendar_month,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 21, 66, 213),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: Color.fromARGB(255, 21, 66, 213))),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Schedule',
                          style: TextStyle(color: Colors.grey),
                        )
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 63,
                          width: 63,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.upload,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 21, 66, 213),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: Color.fromARGB(255, 21, 66, 213))),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Share Screen',
                          style: TextStyle(color: Colors.grey),
                        )
                      ]),
                ],
              ),
            )),
        SizedBox(
          height: 100,
        ),
        Text(
          'Find People and Start Chatting!',
          style: TextStyle(color: Colors.white, fontSize: (20)),
        ),
        SizedBox(
          height: 40,
        ),
        SizedBox(
          height: 40,
          width: 200,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(ContactsPage.route);
            },
            child: const Text(
              'Add Contact',
            ),
            style: TextButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)),
                backgroundColor: Color.fromARGB(255, 21, 66, 213),
                textStyle: const TextStyle(fontWeight: FontWeight.bold)),
          ),
        )
      ]));
}
