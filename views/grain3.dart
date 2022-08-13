import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'grain4.dart';

class Grain3Page extends StatefulWidget {
  const Grain3Page({Key? key}) : super(key: key);

  @override
  State<Grain3Page> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<Grain3Page> {
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
              alignment: Alignment.topCenter,
              child: Text("कडधान्य उपभोग",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
            ),
            Align(
              alignment: Alignment(-1.0, -0.5),
              child: ListTile(
                title: const Text("मटकी", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(220, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(-1.0, -0.3),
              child: ListTile(
                title: const Text(" चना", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(220, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(-1.0, -0.1),
              child: ListTile(
                title: const Text("राजमा", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(220, 0, 100, 0),
                onTap: () {},
                onLongPress: () {},
                tileColor: Colors.brown,
              ),
            ),
            Align(
              alignment: Alignment(-1.0, 0.1),
              child: ListTile(
                title: const Text("सोयाबीन", style: TextStyle(fontSize: 30)),
                contentPadding: EdgeInsets.fromLTRB(210, 0, 100, 0),
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
                      CupertinoPageRoute(builder: (context) => Grain4Page()));
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
