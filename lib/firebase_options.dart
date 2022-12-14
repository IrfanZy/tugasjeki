import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyBDMtebnPJl19Zdm5mPLM-_WVBQjHejXXA',
    appId: '1:702234006344:android:45c3ab817f248f959ed97d',
    messagingSenderId: '702234006344',
    projectId: 'quick-letter-app',
    storageBucket: 'quick-letter-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAhKp5zKeiTk0B8UK5OgT3rclr5c7A6dX4',
    appId: '1:702234006344:ios:7cda02498b774c869ed97d',
    messagingSenderId: '702234006344',
    projectId: 'quick-letter-app',
    storageBucket: 'quick-letter-app.appspot.com',
    iosClientId:
        '702234006344-3mppkm3ioe7daoguugqem8mdcqk5f74v.apps.googleusercontent.com',
    iosBundleId: 'com.example.testApp',
  );
}
