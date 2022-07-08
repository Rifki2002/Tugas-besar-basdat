import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kegiatan_1/auth.dart';
import 'package:kegiatan_1/dummy_data.dart';
import 'package:kegiatan_1/page/meet&chat.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  static const Route = '/register';
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  List<Map<String, dynamic>> dataUser = DummyData.data;
  AuthenticationService service = AuthenticationService(FirebaseAuth.instance);
  void getdata() async {}

  @override
  void initState() {
    // TODO: implement initState\
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: usernameController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 131, 131, 131)),
                      hintText: 'Username',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: passwordController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 131, 131, 131)),
                      hintText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    width: 200,
                    child: TextButton(
                      onPressed: () async {
                        await service.create(
                          email: usernameController.text,
                          password: passwordController.text,
                        );
                        if (service.firebaseAuth.currentUser != null) {
                          Navigator.pushReplacementNamed(context, '/');
                        }
                      },
                      child: const Text(
                        'Register',
                      ),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13)),
                          backgroundColor: Color.fromARGB(255, 44, 89, 238),
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
