import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCDdq4dpZ26-nvQaTl9JGE2Ic9da0y5NX0",
            authDomain: "busmonitoring-7a7ce.firebaseapp.com",
            projectId: "busmonitoring-7a7ce",
            storageBucket: "busmonitoring-7a7ce.appspot.com",
            messagingSenderId: "468502071061",
            appId: "1:468502071061:web:5d7b6fdbe60eb583578b1c"));
  } else {
    await Firebase.initializeApp();
  }
}
