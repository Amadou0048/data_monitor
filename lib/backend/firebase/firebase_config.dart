import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDi0jG_NF51OVTydYC2MH716_MZRsz2eSE",
            authDomain: "data-mo.firebaseapp.com",
            projectId: "data-mo",
            storageBucket: "data-mo.appspot.com",
            messagingSenderId: "367947652892",
            appId: "1:367947652892:web:768b4181027964520064d9"));
  } else {
    await Firebase.initializeApp();
  }
}
