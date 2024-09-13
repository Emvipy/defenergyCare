import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDKQAFeT7CQzRWeT3s8Zrzc132TLT3-Dh0",
            authDomain: "defenergyapp-706fc.firebaseapp.com",
            projectId: "defenergyapp-706fc",
            storageBucket: "defenergyapp-706fc.appspot.com",
            messagingSenderId: "542834776526",
            appId: "1:542834776526:web:970066df47caf0930d339f",
            measurementId: "G-2SQBQKWP8T"));
  } else {
    await Firebase.initializeApp();
  }
}
