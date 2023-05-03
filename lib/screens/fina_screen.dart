import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sample_app/constants/imagespath.dart';
import 'package:sample_app/screens/details.dart';

import '../constants/devicesize.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Stack(children: [
          SizedBox(
            height: devicesize(context).height,
            width: devicesize(context).width,
            child: Image.asset(
              detailsImage,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: devicesize(context).height * 0.3,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(
                      'तुमच्या सहकार्यासाठी धन्यवाद',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: devicesize(context).height * 0.15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PersonalInfo()));
                      },
                      child: const Text(
                        'Add Person',
                        style: TextStyle(fontSize: 20),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                      child: const Text(
                        "Exit",
                        style: TextStyle(fontSize: 20),
                      )),
                ]),
          )
        ]),
      ),
    );
  }
}
