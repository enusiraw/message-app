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
    apiKey: 'AIzaSyC02PyFC7IAV63NwoQHMw9WG3mjIfzI1Hw',
    appId: '1:769307769254:web:948611404761d66bb0f767',
    messagingSenderId: '769307769254',
    projectId: 'chatapp-db23a',
    authDomain: 'chatapp-db23a.firebaseapp.com',
    storageBucket: 'chatapp-db23a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD1GBJIlcubs8aryD0OvHhT7tR4zI4jXZ8',
    appId: '1:769307769254:android:6eaaa83dd415b792b0f767',
    messagingSenderId: '769307769254',
    projectId: 'chatapp-db23a',
    storageBucket: 'chatapp-db23a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-afQh6fUlzi4e4nFRUdfU9bp5sjsbtBA',
    appId: '1:769307769254:ios:3131ac11ee4181dbb0f767',
    messagingSenderId: '769307769254',
    projectId: 'chatapp-db23a',
    storageBucket: 'chatapp-db23a.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD-afQh6fUlzi4e4nFRUdfU9bp5sjsbtBA',
    appId: '1:769307769254:ios:3131ac11ee4181dbb0f767',
    messagingSenderId: '769307769254',
    projectId: 'chatapp-db23a',
    storageBucket: 'chatapp-db23a.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC02PyFC7IAV63NwoQHMw9WG3mjIfzI1Hw',
    appId: '1:769307769254:web:95edd94607faf161b0f767',
    messagingSenderId: '769307769254',
    projectId: 'chatapp-db23a',
    authDomain: 'chatapp-db23a.firebaseapp.com',
    storageBucket: 'chatapp-db23a.appspot.com',
  );
}