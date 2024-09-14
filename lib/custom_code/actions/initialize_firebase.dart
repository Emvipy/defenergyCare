// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show kIsWeb, defaultTargetPlatform, TargetPlatform;

Future<void> initializeFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: _getFirebaseOptions(),
  );
}

FirebaseOptions _getFirebaseOptions() {
  if (kIsWeb) {
    return FirebaseOptions(
      apiKey: '// Replace from firebase_options.dart',
      appId: '// Replace from firebase_options.dart',
      messagingSenderId: '// Replace from firebase_options.dart',
      projectId: '// Replace from firebase_options.dart',
      authDomain: '// Replace from firebase_options.dart',
      storageBucket: '// Replace from firebase_options.dart',
    );
  }
  switch (defaultTargetPlatform) {
    case TargetPlatform.android:
      return FirebaseOptions(
        apiKey: 'AIzaSyDHrz0_T46RHwaTt491fpP3DDxXqTJQwVQ',
        appId: '1:542834776526:android:60a4f557774a9e0d0d339f',
        messagingSenderId: '542834776526',
        projectId: 'defenergyapp-706fc',
        storageBucket: 'defenergyapp-706fc.appspot.com',
      );
    case TargetPlatform.iOS:
      return FirebaseOptions(
        apiKey: 'AIzaSyBhwLXerpGcognAUnEB2SHb4Eb_wFK7lRo',
        appId: '1:542834776526:ios:ced68d73e16587580d339f',
        messagingSenderId: '542834776526',
        projectId: 'defenergyapp-706fc',
        storageBucket: 'defenergyapp-706fc.appspot.com',
        iosBundleId: 'com.defenergyapp.def',
      );
    default:
      throw UnsupportedError(
        'FirebaseOptions are not supported for this platform.',
      );
  }
}
