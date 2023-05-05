import 'package:flutter/material.dart';

import '../constants/devicesize.dart';
import '../finalResponse.dart';

class MedCard extends StatefulWidget {
  String question;
  String response1;
  String response2;
  String response3 = '';
  String keyvalue;
  MedCard(
      {super.key,
      required this.question,
      required this.response1,
      required this.response2,
      required this.response3,
      required this.keyvalue});

  @override
  State<MedCard> createState() => _MedCardState();
}

class _MedCardState extends State<MedCard> {
  Color response1color = Colors.green;
  Color response2color = Colors.red;
  Color response3color = const Color.fromARGB(255, 201, 101, 64);
  bool isTapped = false;
  bool isnoTapped = false;
  bool idkTapped = false;
  @override
  Widget build(BuildContext context) {
    if (widget.response3 != '') {
      return Container(
        height: devicesize(context).height * 0.2,
        width: devicesize(context).width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(width: 1.5, color: Colors.black),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  widget.question,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        finalResponse[widget.keyvalue] = widget.response1;
                        setState(() {
                          isTapped = true;
                          response1color = Colors.cyanAccent;
                        });
                      },
                      child: isTapped
                          ? Container(
                              decoration: BoxDecoration(
                                  color: response1color,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  border: Border.all(
                                      color: Colors.black, width: 1.0)),
                              child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    widget.response1,
                                    style: const TextStyle(fontSize: 28),
                                  )),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  color: response1color,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  border: Border.all(
                                      color: Colors.black, width: 1.0)),
                              child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    widget.response1,
                                    style: const TextStyle(fontSize: 20),
                                  )),
                            )),
                  InkWell(
                      onTap: () {
                        finalResponse[widget.keyvalue] = widget.response2;
                        setState(() {
                          response2color = Colors.cyanAccent;
                          isnoTapped = true;
                        });
                      },
                      child: isnoTapped
                          ? Container(
                              decoration: BoxDecoration(
                                  color: response2color,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  border: Border.all(
                                      color: Colors.black, width: 1.0)),
                              child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    widget.response2,
                                    style: const TextStyle(fontSize: 28),
                                  )),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  color: response2color,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  border: Border.all(
                                      color: Colors.black, width: 1.0)),
                              child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    widget.response2,
                                    style: const TextStyle(fontSize: 20),
                                  )),
                            )),
                  InkWell(
                      onTap: () {
                        finalResponse[widget.keyvalue] = widget.response3;
                        setState(() {
                          idkTapped = true;
                          response3color = Colors.cyanAccent;
                        });
                      },
                      child: idkTapped
                          ? Container(
                              decoration: BoxDecoration(
                                  color: response3color,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  border: Border.all(
                                      color: Colors.black, width: 1.0)),
                              child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    widget.response3,
                                    style: const TextStyle(fontSize: 28),
                                  )),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  color: response3color,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  border: Border.all(
                                      color: Colors.black, width: 1.0)),
                              child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    widget.response3,
                                    style: const TextStyle(fontSize: 20),
                                  )),
                            )),
                ],
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        height: devicesize(context).height * 0.2,
        width: devicesize(context).width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(width: 1.5, color: Colors.black),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  widget.question,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      finalResponse[widget.keyvalue] = widget.response1;
                      setState(() {
                        response1color = Colors.amber;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: response1color,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(color: Colors.black, width: 1.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          widget.response1,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      finalResponse[widget.keyvalue] = widget.response2;
                      setState(() {
                        response2color = Colors.transparent;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: response2color,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(color: Colors.black, width: 1.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          widget.response2,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }
  }
}
