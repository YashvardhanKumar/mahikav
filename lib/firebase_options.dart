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
    apiKey: 'AIzaSyBwB0IMAkLIvN5qKD6Uyc9ccDW46ODNQq8',
    appId: '1:649864211385:android:4abe106af7f1c43961e468',
    messagingSenderId: '649864211385',
    projectId: 'mahikav',
    storageBucket: 'mahikav.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5HaCqG7IdTLSL0NjrTu4u2iY54aeYiI4',
    appId: '1:649864211385:ios:de850f99090f577f61e468',
    messagingSenderId: '649864211385',
    projectId: 'mahikav',
    storageBucket: 'mahikav.appspot.com',
    androidClientId: '649864211385-o1oqfqnq9s5v66sb94alrngmc65h0ele.apps.googleusercontent.com',
    iosClientId: '649864211385-8nbam4go8buvpvel77gvphuufamvnptc.apps.googleusercontent.com',
    iosBundleId: 'com.example.mahikav',
  );
}
