import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kegiatan_1/auth.dart';
import 'package:kegiatan_1/page/edit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class More extends StatefulWidget {
  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  final TextEditingController _controller = new TextEditingController();
  AuthenticationService service = AuthenticationService(FirebaseAuth.instance);
  void getData() async {}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(137, 59, 55, 55),
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.person, color: Colors.white, size: 35),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service.firebaseAuth.currentUser?.email ?? '',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Data Pribadi',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 14,
                  ),
                  onTap: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Edit(
                          nama: 'nama',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 14,
                  ),
                  onTap: () async {
                    GoogleSignIn googleSignIn = GoogleSignIn();
                    await service.firebaseAuth.signOut();
                    if (await googleSignIn.isSignedIn()) {
                      await googleSignIn.disconnect();
                    }
                    if (service.firebaseAuth.currentUser == null) {
                      Navigator.pushReplacementNamed(context, '/login');
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
