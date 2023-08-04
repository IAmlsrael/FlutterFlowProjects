import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDm_fK5K5cQEMSdUtCUl_le1UvJ78LRrbU",
            authDomain: "demo2-a52ec.firebaseapp.com",
            projectId: "demo2-a52ec",
            storageBucket: "demo2-a52ec.appspot.com",
            messagingSenderId: "1029256043715",
            appId: "1:1029256043715:web:d1208309a70cd199a1d676"));
  } else {
    await Firebase.initializeApp();
  }
}
