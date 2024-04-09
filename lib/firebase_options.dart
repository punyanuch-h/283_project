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
    apiKey: 'AIzaSyBLnZHaxJoO5Wi6kGuDLtZ4JCie7GMwSpI',
    appId: '1:779629737952:web:88fcb297943c7e2a88dd85',
    messagingSenderId: '779629737952',
    projectId: 'wender-4a423',
    authDomain: 'wender-4a423.firebaseapp.com',
    storageBucket: 'wender-4a423.appspot.com',
    measurementId: 'G-6TP9W33R7S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAL6QDVptVy7AZgCztWp8aKqwzUoUMxHjU',
    appId: '1:779629737952:android:18fe7d0c4d9051e588dd85',
    messagingSenderId: '779629737952',
    projectId: 'wender-4a423',
    storageBucket: 'wender-4a423.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4QR4q-txfZXWLrfGL8jYK_PCx3oF4Ybs',
    appId: '1:779629737952:ios:eca14025ff76eeb488dd85',
    messagingSenderId: '779629737952',
    projectId: 'wender-4a423',
    storageBucket: 'wender-4a423.appspot.com',
    iosBundleId: 'com.example.wender1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4QR4q-txfZXWLrfGL8jYK_PCx3oF4Ybs',
    appId: '1:779629737952:ios:cc0b09d3f832bb7188dd85',
    messagingSenderId: '779629737952',
    projectId: 'wender-4a423',
    storageBucket: 'wender-4a423.appspot.com',
    iosBundleId: 'com.example.wender1.RunnerTests',
  );
}