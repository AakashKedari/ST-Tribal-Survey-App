import 'package:flutter/material.dart';
import 'package:sample_app/finalResponse.dart';
import 'package:sample_app/screens/fina_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../constants/devicesize.dart';
import '../customwidgets/next_button.dart';

class Scheme extends StatelessWidget {
  CollectionReference surveyFeedbackCollection =
      FirebaseFirestore.instance.collection(finalResponse['PersonalInfo'][0]);

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
                'तुमच्या पात्रतेसाठी सरकारी योजना',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                  height: devicesize(context).height * 0.6,
                  width: devicesize(context).width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(width: 1.5, color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      for (int i = 0;
                          i < finalResponse['PersonalInfo'].length;
                          i++)
                        Text(finalResponse['PersonalInfo'][i].toString())
                    ],
                  )),
              ElevatedButton(
                  onPressed: () async {
                    await surveyFeedbackCollection
                        .add(finalResponse)
                        .then((value) => print("Survey FeedBack Added"));
                  },
                  child: const Text("Add to Cloud"))
            ])),
        Positioned(
            right: 30,
            bottom: 20,
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FinalScreen(),
                      ));
                },
                child: nextButton())),
      ],
    ));
  }
}
