import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trial_one/views/health1.dart';

import 'grain7.dart';

class Grain8Page extends StatefulWidget {
  Grain8Page({Key? key}) : super(key: key);

  @override
  State<Grain8Page> createState() => _Grain8PageState();
}

class _Grain8PageState extends State<Grain8Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('ST Tribal data survey')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/fg.jpg'),
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
                  "          तुम्ही खालीलपैकी कोणकोणते दुग्धजन्य पदार्थ सेवन करता?",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Align(
              alignment: Alignment(-1.0, -0.5),
              child: ListTile(
                title: const Text("दूध", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(220, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(-1.0, -0.3),
              child: ListTile(
                title: const Text("दूध पावडर", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(180, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(-1.0, -0.1),
              child: ListTile(
                title: const Text("लोणी", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(210, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(-1.0, 0.1),
              child: ListTile(
                title: const Text("दही", style: TextStyle(fontSize: 30)),
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
                contentPadding: EdgeInsets.fromLTRB(180, 0, 100, 0),
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
                      CupertinoPageRoute(builder: (context) => Health1Page()));
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
