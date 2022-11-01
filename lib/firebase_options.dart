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
    apiKey: 'AIzaSyChLIt9UTkYw7WhqClj-w3TsZvoXk6uNn4',
    appId: '1:878767050701:web:21b49ed4aa2fb94642be84',
    messagingSenderId: '878767050701',
    projectId: 'furniture-app-baa26',
    authDomain: 'furniture-app-baa26.firebaseapp.com',
    storageBucket: 'furniture-app-baa26.appspot.com',
    measurementId: 'G-8YR4KR8CYH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3dWIW_hOMagjxL6Xt7tz8nB15q0fCAas',
    appId: '1:878767050701:android:bb88a15b5b3067a842be84',
    messagingSenderId: '878767050701',
    projectId: 'furniture-app-baa26',
    storageBucket: 'furniture-app-baa26.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWlSaBnj9uVJnOzymbIWN7WzZe70LuIRk',
    appId: '1:878767050701:ios:974fdc75e8590fd842be84',
    messagingSenderId: '878767050701',
    projectId: 'furniture-app-baa26',
    storageBucket: 'furniture-app-baa26.appspot.com',
    iosClientId: '878767050701-u1i7up27e6p0r93f1k6da2gkhsmpjrhm.apps.googleusercontent.com',
    iosBundleId: 'com.example.furnitureApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBWlSaBnj9uVJnOzymbIWN7WzZe70LuIRk',
    appId: '1:878767050701:ios:974fdc75e8590fd842be84',
    messagingSenderId: '878767050701',
    projectId: 'furniture-app-baa26',
    storageBucket: 'furniture-app-baa26.appspot.com',
    iosClientId: '878767050701-u1i7up27e6p0r93f1k6da2gkhsmpjrhm.apps.googleusercontent.com',
    iosBundleId: 'com.example.furnitureApp',
  );
}
