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
    apiKey: 'AIzaSyA0ROyCZ71YSbxup4rrzKxbFrqncMfDVJk',
    appId: '1:725532374772:web:50a2fb8463c28b499c10a1',
    messagingSenderId: '725532374772',
    projectId: 'noteking-flutter-project',
    authDomain: 'noteking-flutter-project.firebaseapp.com',
    storageBucket: 'noteking-flutter-project.appspot.com',
    measurementId: 'G-6YVGQL40CW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCdeKBZDtkd-lruwuUx7Tmjd4m59NsqYyM',
    appId: '1:725532374772:android:60e09f26a47de3009c10a1',
    messagingSenderId: '725532374772',
    projectId: 'noteking-flutter-project',
    storageBucket: 'noteking-flutter-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDlIuIOM_eNB3Vqte9O6mX1moQHbGmECK8',
    appId: '1:725532374772:ios:a4f4e22190bc7f7e9c10a1',
    messagingSenderId: '725532374772',
    projectId: 'noteking-flutter-project',
    storageBucket: 'noteking-flutter-project.appspot.com',
    iosClientId:
        '725532374772-cf0pcmml505a4liifu187ebijgai2da6.apps.googleusercontent.com',
    iosBundleId: 'com.kingston.noteking',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDlIuIOM_eNB3Vqte9O6mX1moQHbGmECK8',
    appId: '1:725532374772:ios:a4f4e22190bc7f7e9c10a1',
    messagingSenderId: '725532374772',
    projectId: 'noteking-flutter-project',
    storageBucket: 'noteking-flutter-project.appspot.com',
    iosClientId:
        '725532374772-cf0pcmml505a4liifu187ebijgai2da6.apps.googleusercontent.com',
    iosBundleId: 'com.kingston.noteking',
  );
}
