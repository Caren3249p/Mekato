import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      default:
        throw UnsupportedError('Platform not supported');
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBzCPJsbv100hErnJkV2WP1SXWfTz6p8kM',
    appId: '1:392010255491:web:e347029c4834bf7cb15fb6',
    messagingSenderId: '392010255491',
    projectId: 'mekato-53d0a',
    authDomain: 'mekato-53d0a.firebaseapp.com',
    storageBucket: 'mekato-53d0a.appspot.com',
    measurementId: 'G-R54EXGRRG2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCptXdolpslSpDqMnMmBeT4BmnVzTvY-uU',
    appId: '1:392010255491:android:274da4fee7d547a4b15fb6',
    messagingSenderId: '392010255491',
    projectId: 'mekato-53d0a',
    storageBucket: 'mekato-53d0a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDw2u3WA-iRi2g3fbcGiJkpUMCG9S11tdc',
    appId: '1:392010255491:ios:74fe1cde360e7ebfb15fb6',
    messagingSenderId: '392010255491',
    projectId: 'mekato-53d0a',
    storageBucket: 'mekato-53d0a.appspot.com',
    iosBundleId: 'com.example.mekato',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDw2u3WA-iRi2g3fbcGiJkpUMCG9S11tdc',
    appId: '1:392010255491:ios:74fe1cde360e7ebfb15fb6',
    messagingSenderId: '392010255491',
    projectId: 'mekato-53d0a',
    storageBucket: 'mekato-53d0a.appspot.com',
    iosBundleId: 'com.example.mekato',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBzCPJsbv100hErnJkV2WP1SXWfTz6p8kM',
    appId: '1:392010255491:web:e347029c4834bf7cb15fb6',
    messagingSenderId: '392010255491',
    projectId: 'mekato-53d0a',
    authDomain: 'mekato-53d0a.firebaseapp.com',
    storageBucket: 'mekato-53d0a.appspot.com',
    measurementId: 'G-R54EXGRRG2',
  );
}
