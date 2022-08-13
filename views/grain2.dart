import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'grain3.dart';

class Grain2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ST Tribal data survey'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/grain_bg2.jpeg'),
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
            const Align(
              alignment: Alignment(-1.0, -0.8),
              child: Text(
                  "           तुम्ही खालीलपैकी कोणकोणते पालेभाज्या सेवन करता?",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Align(
              alignment: Alignment(-1.0, -0.5),
              child: ListTile(
                title: const Text("वांगे", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(220, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(-1.0, -0.3),
              child: ListTile(
                title: const Text("काकडी", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(210, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(-1.0, -0.1),
              child: ListTile(
                title: const Text("भेंडी", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(220, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(-1.0, 0.1),
              child: ListTile(
                title: const Text("कारले", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(220, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(-1.0, 0.3),
              child: ListTile(
                title:
                    const Text("काहीही नाही", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(190, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(0.0, 0.6),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => Grain3Page()));
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
  }
}
