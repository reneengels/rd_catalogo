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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDc8brmZxJ26tBc0gGDoqEvwry9zrkdeGQ',
    appId: '1:462916155679:android:7ca170ddcc43c72085d82a',
    messagingSenderId: '462916155679',
    projectId: 'jardimsecretofirebase',
    storageBucket: 'jardimsecretofirebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDiRYXjOcWaQKqPqOcUlasw-TL8vzmSVc8',
    appId: '1:462916155679:ios:6655569f392a1dd585d82a',
    messagingSenderId: '462916155679',
    projectId: 'jardimsecretofirebase',
    storageBucket: 'jardimsecretofirebase.appspot.com',
    androidClientId: '462916155679-can3h0l3is4t31tfm3o8nedo3jo7pqj8.apps.googleusercontent.com',
    iosClientId: '462916155679-okdriep6ji79bfjbgcglrvjj4lfteitl.apps.googleusercontent.com',
    iosBundleId: 'com.example.rdCatalogo',
  );

}