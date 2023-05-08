import 'package:flutter/material.dart';
import 'package:sample_app/finalResponse.dart';
import '../constants/devicesize.dart';
import 'answerBG.dart';
import 'next_button.dart';

// ignore: must_be_immutable
class QFormat extends StatefulWidget {
  List givendetails;
  int indexNo;
  String imagepath;
  String qtitle;
  Widget nxtPage;
  String keyvalue;
  QFormat(
      {super.key,
      required this.indexNo,
      required this.imagepath,
      required this.qtitle,
      required this.nxtPage,
      required this.givendetails,
      required this.keyvalue});

  @override
  State<QFormat> createState() => _QFormatState();
}

class _QFormatState extends State<QFormat> {
  final FocusScopeNode _focusScopeNode = FocusScopeNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!_focusScopeNode.hasPrimaryFocus) {
          _focusScopeNode.unfocus();
        }
      },
      child: FocusScope(
        node: _focusScopeNode,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text('ST Survey '),
            centerTitle: true,
            actions: [
              PopupMenuButton(
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem<String>(
                      value: 'option1',
                      child: Text('Get All'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'option2',
                      child: Text('Remove'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'option2',
                      child: Text('Clear Session'),
                    ),
                    // Add more menu items as needed
                  ];
                },
              ),
            ],
          ),
          body: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  widget.imagepath,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                left: devicesize(context).width * 0.2,
                child: SizedBox(
                  width: devicesize(context).width * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: devicesize(context).height * 0.10,
                      ),
                      Text(
                        widget.qtitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: devicesize(context).height * 0.05,
                      ),
                      Options(
                        givendetails: widget.givendetails,
                        indexnumber: widget.indexNo,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  right: 30,
                  bottom: 20,
                  child: InkWell(
                      onTap: () {
                        finalResponse[widget.keyvalue] = widget.givendetails;
                        print(finalResponse);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => widget.nxtPage,
                            ));
                      },
                      child: nextButton())),
            ],
          ),
        ),
      ),
    );
  }
}
