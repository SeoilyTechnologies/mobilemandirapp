import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

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
        return ios; // macOS same Firebase app use karega
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDG7JGtSr7P28p7XA8WWZRbuV4wuZCXLh4',
    appId: '1:192317191997:web:50d9b30e569483acc9b754',
    messagingSenderId: '192317191997',
    projectId: 'mobile-mandir',
    authDomain: 'mobile-mandir.firebaseapp.com',
    storageBucket: 'mobile-mandir.firebasestorage.app',
    measurementId: 'G-8Z8B5Q001M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBXT2pgbHf5har6eTAPj9YBkrtjIu3SjcQ',
    appId: '1:192317191997:android:890c5101081ac2c3c9b754',
    messagingSenderId: '192317191997',
    projectId: 'mobile-mandir',
    storageBucket: 'mobile-mandir.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDwbUPASzuB69kHbeT1sccV60mhb0Z-XuA',
    appId: '1:192317191997:ios:758f09c8a54cd574c9b754',
    messagingSenderId: '192317191997',
    projectId: 'mobile-mandir',
    storageBucket: 'mobile-mandir.firebasestorage.app',
    iosBundleId: 'com.seoily.mobilemandir',
    iosClientId:
    '192317191997-mrjh8aan77qdjtppmf4ua59vsspu306u.apps.googleusercontent.com',
  );
}