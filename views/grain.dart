import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'grain2.dart';

class Grain1Page extends StatefulWidget {
  @override
  State<Grain1Page> createState() => _FirstPageState();
}

class _FirstPageState extends State<Grain1Page> {
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
                child: Text("धान्य उपभोग",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
              ),
              const Align(
                alignment: Alignment(-1.0, -0.5),
                child: ListTile(
                  title: Text(
                    "                            बाजरी",
                    style: TextStyle(fontSize: 30),
                  ),
                  trailing: Icon(Icons.star_border),
                ),
              ),
              const Align(
                alignment: Alignment(-1.0, -0.3),
                child: ListTile(
                  title: Text(
                    "                              गहू",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment(-1.0, -0.1),
                child: ListTile(
                  title: Text(
                    "                            तांदूळ",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment(-1.0, 0.1),
                child: ListTile(
                  title: Text(
                    "                         काहीही नाही",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.0, 0.5),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => Grain2Page()));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
