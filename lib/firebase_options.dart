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
    apiKey: 'AIzaSyDQ94dJS-TvItWJt2vH74NkoeW8NGY_MJ0',
    appId: '1:688350266522:web:17c7c9593c370aaf8ecb23',
    messagingSenderId: '688350266522',
    projectId: 'facebook-clone-a652b',
    authDomain: 'facebook-clone-a652b.firebaseapp.com',
    storageBucket: 'facebook-clone-a652b.appspot.com',
    measurementId: 'G-WZ92N7F02S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB8m8wgmqVvmIegxa--yBrN5ZT4_6YSjdg',
    appId: '1:688350266522:android:ae593c58049de3f18ecb23',
    messagingSenderId: '688350266522',
    projectId: 'facebook-clone-a652b',
    storageBucket: 'facebook-clone-a652b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDT1KT-cn35WXSB00TZFBhcgaLNCIby8yM',
    appId: '1:688350266522:ios:ec1c2dfc8de048088ecb23',
    messagingSenderId: '688350266522',
    projectId: 'facebook-clone-a652b',
    storageBucket: 'facebook-clone-a652b.appspot.com',
    iosClientId: '688350266522-i2leqa74cn1rgfiubp3ps2rm5fg8ii2r.apps.googleusercontent.com',
    iosBundleId: 'com.devomar.facebookclone.facebookClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDT1KT-cn35WXSB00TZFBhcgaLNCIby8yM',
    appId: '1:688350266522:ios:5cd9bc044c026c028ecb23',
    messagingSenderId: '688350266522',
    projectId: 'facebook-clone-a652b',
    storageBucket: 'facebook-clone-a652b.appspot.com',
    iosClientId: '688350266522-3vr3s85fsjmgm09louparmrqjsfk7r8f.apps.googleusercontent.com',
    iosBundleId: 'package-name.facebookClone',
  );
}
