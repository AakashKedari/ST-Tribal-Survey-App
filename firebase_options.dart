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
    apiKey: 'AIzaSyAcSuR7twDwsZZfrI0Nh0qO_S2xIC835yQ',
    appId: '1:830860304327:web:67ab7139f775a9177b83e2',
    messagingSenderId: '830860304327',
    projectId: 'register-app-e9ea2',
    authDomain: 'register-app-e9ea2.firebaseapp.com',
    storageBucket: 'register-app-e9ea2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBV-C2zv4DPciJniJdUBaz5F6ojgE8XgVs',
    appId: '1:830860304327:android:86be0c11c4264a577b83e2',
    messagingSenderId: '830860304327',
    projectId: 'register-app-e9ea2',
    storageBucket: 'register-app-e9ea2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4BPcK0Wg5DPxD0qkw5RsQX2SEA33kDps',
    appId: '1:830860304327:ios:e33bdcaea72f020f7b83e2',
    messagingSenderId: '830860304327',
    projectId: 'register-app-e9ea2',
    storageBucket: 'register-app-e9ea2.appspot.com',
    iosClientId: '830860304327-rb83rmc9udbhs03o4od1a1e3eudifmkc.apps.googleusercontent.com',
    iosBundleId: 'com.example.trialOne',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD4BPcK0Wg5DPxD0qkw5RsQX2SEA33kDps',
    appId: '1:830860304327:ios:e33bdcaea72f020f7b83e2',
    messagingSenderId: '830860304327',
    projectId: 'register-app-e9ea2',
    storageBucket: 'register-app-e9ea2.appspot.com',
    iosClientId: '830860304327-rb83rmc9udbhs03o4od1a1e3eudifmkc.apps.googleusercontent.com',
    iosBundleId: 'com.example.trialOne',
  );
}