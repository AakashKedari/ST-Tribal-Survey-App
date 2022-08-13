import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trial_one/firebase_options.dart';
import 'package:trial_one/views/edu1.dart';
import 'package:trial_one/views/edu2.dart';
import 'package:trial_one/views/edu3.dart';
import 'package:trial_one/views/edu4.dart';
import 'package:trial_one/views/grain.dart';
import 'package:trial_one/views/grain2.dart';
import 'package:trial_one/views/grain3.dart';
import 'package:trial_one/views/grain4.dart';
import 'package:trial_one/views/grain5.dart';
import 'package:trial_one/views/grain6.dart';
import 'package:trial_one/views/grain7.dart';
import 'package:trial_one/views/grain8.dart';
import 'package:trial_one/views/health1.dart';
import 'package:trial_one/views/health2.dart';
import 'package:trial_one/views/health3.dart';
import 'package:trial_one/views/health4.dart';
import 'package:trial_one/views/loginview.dart';
import 'firebase_options.dart';

void main() {
  print("Hii");
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/first": (context) => const Loginview(),
        "/second": (context) => PersonalInfo(),
        "Subsecond": (context) => MarryInfo(),
        "/third": (context) => Grain1Page(),
        "/fourth": (context) => Grain2Page(),
        "/fifth": (context) => const Grain3Page(),
        "/sixth": (context) => Grain4Page(),
        "/seventh": (context) => Grain5Page(),
        "eighth": (context) => Grain6Page(),
        "nineth": (context) => Grain7Page(),
        "tenth": (context) => Grain8Page(),
        "eleventh": (context) => Health1Page(),
        "twelveth": (constant) => Health2Page(),
        "Thirteenth": (constant) => Health3Page(),
        "Fourteenth": (constant) => Health4Page(),
        "fifteenth": (constant) => Edu1Page(),
        "sixteenth": (constant) => Edu2Page(),
        "seventeenth": (constant) => Edu3Page(),
        "eighteenth": (constant) => Edu4Page(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PersonalInfo(),
    ),
  );
}

Grain2Page Template() => Grain2Page();

//Home Page mein Splash Screen Add kr ***IMPORTANT***
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ST Tribal data survey'),
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              print(FirebaseAuth.instance.currentUser);
              return const Text('Done');
            default:
              return const Text('Loading..');
          }
        },
      ),
    );
  }
}

class PersonalInfo extends StatefulWidget {
  PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {},
      )),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/grain_bg2.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            const Text("                  कृपया तुमची माहिती भरा",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
            newMethod("नाव"),
            newMethod("आधार क्रमांक"),
            newMethod("फोन नंबर"),
            newMethod("वय"),
            newMethod("लिंग"),
            newMethod("शिक्षण"),
            newMethod("जिल्हा"),
            newMethod("तालुका"),
            newMethod(" गाव "),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => Grain1Page()));
              },
              child: Text(
                "Next",
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextField newMethod(String labelText) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(fontSize: 30),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}

class MarryInfo extends StatefulWidget {
  MarryInfo({Key? key}) : super(key: key);

  @override
  State<MarryInfo> createState() => _MarryInfoState();
}

class _MarryInfoState extends State<MarryInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('ST Tribal data survey')),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/yLOOp.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(children: [
              ListView(
                children: [
                  const SizedBox(
                    height: 100,
                    width: 100,
                  )
                ],
              ),
              Align(
                alignment: Alignment(-1.0, -0.8),
                child: ListTile(
                  title: const Text("तुम्हाला जाणीव असलेल्या कला",
                      style: TextStyle(fontSize: 35, color: Colors.red)),
                  contentPadding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                  onTap: () {},
                ),
              ),
            ])));
  }
}
