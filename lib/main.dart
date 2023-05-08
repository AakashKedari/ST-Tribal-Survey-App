import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_app/screens/grain1.dart';
import 'package:sample_app/screens/splashScreen.dart';
import 'firebase_options.dart';

var kDarkColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 5, 99, 125));

Future<void> main() async {
  //this function ensures firebase initialisation

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData.dark()
      //     .copyWith(useMaterial3: true, colorScheme: kDarkColorScheme),
      theme: ThemeData().copyWith(
          textTheme: ThemeData().textTheme.copyWith(
              titleLarge: const TextStyle(fontWeight: FontWeight.bold),
              labelSmall: const TextStyle(fontWeight: FontWeight.w100)),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(color: Colors.green, elevation: 10)),
      home: SplashScreen(),
    ));
  });

  //In order to avoid our app running in horizontal landscape mode in mobile
}
