import 'package:flutter/material.dart';
import 'package:sample_app/finalResponse.dart';

import '../constants/devicesize.dart';
import '../customwidgets/medicalCard.dart';
import '../customwidgets/next_button.dart';
import 'Medical2.dart';

class Medical1 extends StatefulWidget {
  const Medical1({super.key});

  @override
  State<Medical1> createState() => _Medical1State();
}

class _Medical1State extends State<Medical1> {
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
                const Text(
                  'वैद्यकीय अहवाल',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                MedCard(
                    keyvalue: 'प्राथमिक आरोग्य',
                    question:
                        'तुम्ही प्राथमिक आरोग्य केंद्राला भेट दिली आहे का?',
                    response1: 'होय',
                    response2: 'नाही',
                    response3: 'माहित नाही'),
                MedCard(
                    keyvalue: 'रुग्णालयात २४ तास डॉक्टर',
                    question: 'रुग्णालयात २४ तास डॉक्टर उपलब्ध असतात  का?',
                    response1: 'होय',
                    response2: 'नाही',
                    response3: 'माहित नाही'),
              ],
            ),
          ),
          Positioned(
              right: 30,
              bottom: 20,
              child: InkWell(
                  onTap: () {
                    setState(() {
                      // print(finalResponse);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Medical2(),
                          ));
                    });
                  },
                  child: nextButton())),
        ],
      ),
    );
  }
}
