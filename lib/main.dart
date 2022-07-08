import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kegiatan_1/firebase_options.dart';
import 'package:kegiatan_1/home.dart';
import 'package:kegiatan_1/notif.dart';
import 'package:kegiatan_1/page/contact_controller.dart';
import 'package:kegiatan_1/page/contacts.dart';
import 'package:kegiatan_1/page/login.dart';
import 'package:kegiatan_1/page/meet&chat.dart';
import 'package:kegiatan_1/page/register.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await initializeNotif();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ContactController>(
      create: ((context) => ContactController()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Color.fromARGB(255, 46, 46, 49)),
        //home: Home(),
        initialRoute: '/login',
        routes: {
          '/': (_) => Home(),
          '/login': (_) => Login(),
          '/register': (_) => Register(),
          ContactsPage.route: (_) => ContactsPage(),
          Meet_Chat.route: (_) => Meet_Chat()
        },
      ),
    );
  }
}
