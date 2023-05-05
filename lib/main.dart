import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/screens/splashScreen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue),
    home: SplashScreen(),
  ));
}
