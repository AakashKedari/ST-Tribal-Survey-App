import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'health2.dart';

class Health1Page extends StatefulWidget {
  Health1Page({Key? key}) : super(key: key);

  @override
  State<Health1Page> createState() => _Health1PageState();
}

class _Health1PageState extends State<Health1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('ST Tribal data survey')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/health.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            ListView(
              children: [
                const SizedBox(
                  height: 100,
                  width: 100,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(140, 0, 0, 0),
              child: Align(
                alignment: Alignment(-1.0, -0.8),
                child: Text("वैद्यकीय अहवाल",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Align(
              alignment: Alignment(-1.0, -0.5),
              child: ListTile(
                title: const Text(
                    "तुम्ही प्राथमिक आरोग्य केंद्राला भेट दिली आहे का?",
                    style: TextStyle(fontSize: 30, color: Colors.red)),
                contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                onTap: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
              child: Align(
                  alignment: Alignment(-1.0, -0.2),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      "होय",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(220, 0, 0, 0),
              child: Align(
                  alignment: Alignment(-1.0, -0.2),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      "नाही",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(340, 0, 0, 0),
              child: Align(
                  alignment: Alignment(-1.0, -0.2),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      "माहित नाही",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Align(
              alignment: Alignment(-1.0, 0.1),
              child: ListTile(
                title: const Text("रुग्णालयात २४ तास डॉक्टर उपलब्ध असतात  का?",
                    style: TextStyle(fontSize: 30, color: Colors.red)),
                contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                onTap: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
              child: Align(
                  alignment: Alignment(-1.0, 0.3),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      "होय",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(220, 0, 0, 0),
              child: Align(
                  alignment: Alignment(-1.0, 0.3),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      "नाही",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(340, 0, 0, 0),
              child: Align(
                  alignment: Alignment(-1.0, 0.3),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      "माहित नाही",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Align(
              alignment: Alignment(0.0, 0.6),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => Health2Page()));
                },
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
