import 'package:flutter/material.dart';
import 'package:sample_app/finalResponse.dart';
import 'package:sample_app/screens/medical3.dart';

import '../constants/devicesize.dart';
import '../customwidgets/medicalCard.dart';
import '../customwidgets/next_button.dart';

class Medical2 extends StatefulWidget {
  const Medical2({super.key});

  @override
  State<Medical2> createState() => _Medical2State();
}

class _Medical2State extends State<Medical2> {
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
                    keyvalue: 'तुम्हाला काही आजार आहे का?',
                    question: 'तुम्हाला काही आजार आहे का?',
                    response1: 'होय',
                    response2: 'नाही',
                    response3: 'माहित नाही'),
                Container(
                    height: devicesize(context).height * 0.15,
                    width: devicesize(context).width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(width: 1.5, color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "तुम्हाला कोणता आजार आहे",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onChanged: (value) {
                                // Handle the input value
                              },
                            ),
                          )
                        ],
                      ),
                    )),
                MedCard(
                    keyvalue: 'लस',
                    question: 'तुम्ही लस घेतली आहे का?',
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
                      print(finalResponse);
                      // givenDetails.add(nameController.text);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Medical3(),
                          ));
                    });
                  },
                  child: nextButton())),
        ],
      ),
    );
  }
}
