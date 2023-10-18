// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

// / Default [FirebaseOptions] for use with your Firebase apps.
// /
// / Example:
// / ```dart
// / import 'firebase_options.dart';
// / // ...
// / await Firebase.initializeApp(
// /   options: DefaultFirebaseOptions.currentPlatform,
// / );
// / ```
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
        return macos;
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
    apiKey: 'AIzaSyDgEyDxI4QWS7oRz8-KuyJ_F6o22BnyjlQ',
    appId: '1:1040286768360:web:e7c69e8dd3c414240c7d5d',
    messagingSenderId: '1040286768360',
    projectId: 'malachapp',
    authDomain: 'malachapp.firebaseapp.com',
    databaseURL:
        'https://malachapp-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'malachapp.appspot.com',
    measurementId: 'G-F4RLGWZF5X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC_MQNVID7Ywya5WGOyWWYR5Iub85kcAb8',
    appId: '1:1040286768360:android:7d885c11dd6bea6b0c7d5d',
    messagingSenderId: '1040286768360',
    projectId: 'malachapp',
    databaseURL:
        'https://malachapp-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'malachapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAyJiLGLzboaVljzeBbqd6v4TlqhFcezM0',
    appId: '1:1040286768360:ios:9ead8616195970c10c7d5d',
    messagingSenderId: '1040286768360',
    projectId: 'malachapp',
    databaseURL:
        'https://malachapp-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'malachapp.appspot.com',
    iosBundleId: 'com.example.malachapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAyJiLGLzboaVljzeBbqd6v4TlqhFcezM0',
    appId: '1:1040286768360:ios:e7cd7c563f78f20b0c7d5d',
    messagingSenderId: '1040286768360',
    projectId: 'malachapp',
    databaseURL:
        'https://malachapp-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'malachapp.appspot.com',
    iosBundleId: 'com.example.malachapp.RunnerTests',
  );
}
