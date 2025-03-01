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
    apiKey: 'AIzaSyAuBO52VCoSmAXj2yAwLpCMtoFzxVNhV40',
    appId: '1:59876352325:web:815994c06cd25e71ac5e2c',
    messagingSenderId: '59876352325',
    projectId: 'ai-weather-52a5f',
    authDomain: 'ai-weather-52a5f.firebaseapp.com',
    storageBucket: 'ai-weather-52a5f.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAS0BDjm_CQpgX--Pz4SyqlQq0S4TYnVHc',
    appId: '1:59876352325:android:507e0393fd553d9aac5e2c',
    messagingSenderId: '59876352325',
    projectId: 'ai-weather-52a5f',
    storageBucket: 'ai-weather-52a5f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDvvZlrqY_rlrLmQLLbckygYt_aIiyIVVQ',
    appId: '1:59876352325:ios:81b32ed98239af74ac5e2c',
    messagingSenderId: '59876352325',
    projectId: 'ai-weather-52a5f',
    storageBucket: 'ai-weather-52a5f.firebasestorage.app',
    iosBundleId: 'com.example.task1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDvvZlrqY_rlrLmQLLbckygYt_aIiyIVVQ',
    appId: '1:59876352325:ios:81b32ed98239af74ac5e2c',
    messagingSenderId: '59876352325',
    projectId: 'ai-weather-52a5f',
    storageBucket: 'ai-weather-52a5f.firebasestorage.app',
    iosBundleId: 'com.example.task1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAuBO52VCoSmAXj2yAwLpCMtoFzxVNhV40',
    appId: '1:59876352325:web:46a378360619a412ac5e2c',
    messagingSenderId: '59876352325',
    projectId: 'ai-weather-52a5f',
    authDomain: 'ai-weather-52a5f.firebaseapp.com',
    storageBucket: 'ai-weather-52a5f.firebasestorage.app',
  );
}
