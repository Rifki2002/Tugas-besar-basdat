// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAc642anDY8hD86jgKHWBEzgoLCbuojfx0',
    appId: '1:1027647930984:web:6495475b6a3f5ef70271dd',
    messagingSenderId: '1027647930984',
    projectId: 'live-meeting-a1475',
    authDomain: 'live-meeting-a1475.firebaseapp.com',
    storageBucket: 'live-meeting-a1475.appspot.com',
    measurementId: 'G-YVK769NZP3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCFz-y1QEgrbYnbJDksihTIYvxYQDmqVRg',
    appId: '1:1027647930984:android:2c5e8a8786376ec10271dd',
    messagingSenderId: '1027647930984',
    projectId: 'live-meeting-a1475',
    storageBucket: 'live-meeting-a1475.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDAxvkNBlnC_9kRlfjM7vWYASUI3SdrM7o',
    appId: '1:1027647930984:ios:ad37740d83e7e8a40271dd',
    messagingSenderId: '1027647930984',
    projectId: 'live-meeting-a1475',
    storageBucket: 'live-meeting-a1475.appspot.com',
    iosClientId: '1027647930984-4ge9m1rv9knp5lodl3n3dma1fd9rmesr.apps.googleusercontent.com',
    iosBundleId: 'com.example.kegiatan1',
  );
}