import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'health3.dart';

class Health4Page extends StatefulWidget {
  Health4Page({Key? key}) : super(key: key);

  @override
  State<Health4Page> createState() => _Health4PageState();
}

class _Health4PageState extends State<Health4Page> {
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
            Align(
              alignment: Alignment(-1.0, -0.7),
              child: ListTile(
                title: const Text("तुम्ही दारू पिता का?",
                    style: TextStyle(fontSize: 30, color: Colors.red)),
                contentPadding: const EdgeInsets.fromLTRB(140, 0, 0, 0),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, -0.5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "होय",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(280, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, -0.5),
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
            Align(
              alignment: const Alignment(-1.0, -0.2),
              child: ListTile(
                title: const Text("तुम्ही धूम्रपान करता का?",
                    style: TextStyle(fontSize: 30, color: Colors.red)),
                contentPadding: EdgeInsets.fromLTRB(120, 0, 0, 0),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, 0.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "होय",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(280, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, 0.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "नाही",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Align(
              alignment: const Alignment(-1.0, 0.3),
              child: ListTile(
                title: const Text("तुम्ही तंबाखूचे सेवन करता का?",
                    style: TextStyle(fontSize: 30, color: Colors.red)),
                contentPadding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, 0.5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "होय",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(280, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, 0.5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "नाही",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Align(
              alignment: Alignment(0.0, 0.8),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => Health3Page()));
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
