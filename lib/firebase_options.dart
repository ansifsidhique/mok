// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyD_pgb4SMA_22A4uHECjMBLqYIynGgoK04',
    appId: '1:633136907838:web:92bae62cebaa4f744df36f',
    messagingSenderId: '633136907838',
    projectId: 'mock-project-f8550',
    authDomain: 'mock-project-f8550.firebaseapp.com',
    storageBucket: 'mock-project-f8550.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA0A8M0JXh1HUSjBP9N_E-ZRoYwpMFrcYQ',
    appId: '1:633136907838:android:ee15ac236de0de6c4df36f',
    messagingSenderId: '633136907838',
    projectId: 'mock-project-f8550',
    storageBucket: 'mock-project-f8550.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBqN7smIl6wbqDr4aJXnDosgAzAppKnFCA',
    appId: '1:633136907838:ios:e3a9e640774d1b7d4df36f',
    messagingSenderId: '633136907838',
    projectId: 'mock-project-f8550',
    storageBucket: 'mock-project-f8550.appspot.com',
    iosBundleId: 'com.example.blocpersondetails',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBqN7smIl6wbqDr4aJXnDosgAzAppKnFCA',
    appId: '1:633136907838:ios:e3a9e640774d1b7d4df36f',
    messagingSenderId: '633136907838',
    projectId: 'mock-project-f8550',
    storageBucket: 'mock-project-f8550.appspot.com',
    iosBundleId: 'com.example.blocpersondetails',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD_pgb4SMA_22A4uHECjMBLqYIynGgoK04',
    appId: '1:633136907838:web:9a959c837555dd2e4df36f',
    messagingSenderId: '633136907838',
    projectId: 'mock-project-f8550',
    authDomain: 'mock-project-f8550.firebaseapp.com',
    storageBucket: 'mock-project-f8550.appspot.com',
  );
}
