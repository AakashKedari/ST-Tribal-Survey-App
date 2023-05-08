// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sample_app/constants/devicesize.dart';
import 'package:sample_app/constants/parameters.dart';

class Options extends StatefulWidget {
  int indexnumber;
  List givendetails;
  Options({super.key, required this.indexnumber, required this.givendetails});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  // A Set is just like a list but it doesn't have repitive elements. All the elements (Objects are unique in it.)
  Set<int> selectedTileIndices = Set<int>();
  TextEditingController itarcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int adjustheight = parameters[widget.indexnumber].length;
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        height: adjustheight == 6
            ? devicesize(context).height * 0.49
            : devicesize(context).height * 0.4,
        width: devicesize(context).width * 0.6,
        child: ListView.builder(
            itemCount: parameters[widget.indexnumber].length,
            itemBuilder: (BuildContext context, int index) {
              if (parameters[widget.indexnumber][index] != 'इतर') {
                return SizedBox(
                  height: adjustheight == 6
                      ? ((devicesize(context).height * 0.6) / 8)
                      : (devicesize(context).height * 0.5) / 7,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        setState(() {
                          if (selectedTileIndices.contains(index)) {
                            selectedTileIndices
                                .remove(index); // Deselect if already selected
                          } else {
                            selectedTileIndices
                                .add(index); // Select if not selected
                          }
                        });
                      });
                      // Add the User responses to a dynamic list
                      if (selectedTileIndices.contains(index)) {
                        widget.givendetails
                            .add(parameters[widget.indexnumber][index]);
                      } else {
                        widget.givendetails
                            .remove(parameters[widget.indexnumber][index]);
                      }
                    },
                    child: Card(
                      // If the option is selected, the container will turn blue
                      color: selectedTileIndices.contains(index)
                          ? const Color(0xFFE74C3C)
                          : Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            parameters[widget.indexnumber][index],
                            style: const TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),

                          // const Divider(
                          //   color: Colors.black,
                          // )
                        ],
                      ),
                    ),
                  ),
                );
              } else if (parameters[widget.indexnumber][index] == 'इतर') {
                return Card(
                  child: Container(
                    decoration: BoxDecoration(
                        // color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    height: adjustheight == 6
                        ? ((devicesize(context).height * 0.6) / 8)
                        : (devicesize(context).height * 0.5) / 7,
                    // height: double.infinity,
                    width: devicesize(context).width * 0.6,
                    child: TextField(
                      decoration: const InputDecoration(
                        focusedBorder: InputBorder.none,
                        labelText: 'इतर',
                        contentPadding: EdgeInsets.symmetric(horizontal: 90),
                        // fillColor: Colors.white,
                        // filled: true,
                        // border: OutlineInputBorder(
                        //     borderRadius:
                        //         BorderRadius.all(Radius.circular(10))),
                      ),
                      controller: itarcontroller,
                    ),
                  ),
                );
              }
            }));
  }
}
