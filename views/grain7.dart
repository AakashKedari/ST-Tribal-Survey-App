import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'grain8.dart';

class Grain7Page extends StatefulWidget {
  Grain7Page({Key? key}) : super(key: key);

  @override
  State<Grain7Page> createState() => _Grain7PageState();
}

class _Grain7PageState extends State<Grain7Page> {
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
              child: Text("          तुम्ही खालीलपैकी कोणकोणते मासे सेवन करता?",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Align(
              alignment: Alignment(-1.0, -0.5),
              child: ListTile(
                title: const Text("सुरमई", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(220, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(-1.0, -0.3),
              child: ListTile(
                title: const Text("कोळंबी", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(215, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(-1.0, -0.1),
              child: ListTile(
                title: const Text("खेकडा", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(215, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(-1.0, 0.1),
              child: ListTile(
                title: const Text("इतर मासे", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(205, 0, 100, 0),
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
                      CupertinoPageRoute(builder: (context) => Grain8Page()));
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
