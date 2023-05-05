import 'package:flutter/material.dart';
import 'package:sample_app/finalResponse.dart';
import 'package:sample_app/screens/scheme.dart';

import '../constants/devicesize.dart';
import '../customwidgets/medicalCard.dart';
import '../customwidgets/next_button.dart';
import 'Medical2.dart';

class Medical4 extends StatefulWidget {
  const Medical4({super.key});

  @override
  State<Medical4> createState() => _Medical4State();
}

class _Medical4State extends State<Medical4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: devicesize(context).height,
            width: devicesize(context).width,
            child: Image.asset(
              'assets/images/health.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MedCard(
                    keyvalue: 'दारू',
                    question: 'तुम्ही दारू पिता का?',
                    response1: 'होय',
                    response2: 'नाही',
                    response3: ''),
                MedCard(
                    keyvalue: 'धूम्रपान',
                    question: 'तुम्ही धूम्रपान करता का?',
                    response1: 'होय',
                    response2: 'नाही',
                    response3: ''),
                MedCard(
                    keyvalue: 'तंबाखू',
                    question: 'तुम्ही तंबाखूचे सेवन करता का?',
                    response1: 'होय',
                    response2: 'नाही',
                    response3: '')
              ],
            ),
          ),
          Positioned(
              right: 30,
              bottom: 20,
              child: InkWell(
                  onTap: () {
                    setState(() {
                      print(finalResponse);
                      print(finalResponse['PersonalInfo'].length);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Scheme(),
                          ));
                    });
                  },
                  child: nextButton())),
        ],
      ),
    );
  }
}
