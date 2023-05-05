import 'package:flutter/material.dart';
import 'package:sample_app/finalResponse.dart';
import 'package:sample_app/screens/medical4.dart';

import '../constants/devicesize.dart';
import '../customwidgets/medicalCard.dart';
import '../customwidgets/next_button.dart';

class Medical3 extends StatefulWidget {
  const Medical3({super.key});

  @override
  State<Medical3> createState() => _Medical3State();
}

class _Medical3State extends State<Medical3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
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
                keyvalue: 'शौचालय',
                question: 'तुम्हाला शौचालयाची सुविधा आहे का?',
                response1: 'होय',
                response2: 'नाही',
                response3: ''),
            Container(
                height: devicesize(context).height * 0.16,
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
                      children: const [
                        Text('सार्वजनिक'),
                        Divider(
                          thickness: 3,
                        ),
                        Text('खाजगी'),
                        Divider(
                          thickness: 3,
                        ),
                        Text('उघडा')
                      ]),
                )),
            MedCard(
                keyvalue: 'पिण्याचे पाणी',
                question: 'तुम्हाला पिण्याचे पाणी उपलब्ध आहे का?',
                response1: 'होय',
                response2: 'नाही',
                response3: ''),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Medical4(),
                      ));
                });
              },
              child: nextButton())),
    ]));
  }
}
