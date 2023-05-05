import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_app/constants/devicesize.dart';
import 'package:sample_app/screens/details.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Optional: Add any additional logic you need for the splash screen, such as data loading or initialization
    // You can use a Future.delayed or Timer to simulate a delay before moving to the next screen
    // Example:
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const PersonalInfo()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // Set the color of the status bar to match the background color of the splash screen
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      backgroundColor: Colors.white, // Set your desired background color here
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your splash screen image here
            SizedBox(
              height: devicesize(context).height,
              width: devicesize(context).width,
              child: Image.asset(
                'assets/images/pexels-ganta-srinivas-4867268.jpg',
                fit: BoxFit.cover,
              ),
            ), // Replace 'splash_image.png' with your own image path
          ],
        ),
      ),
    );
  }
}
