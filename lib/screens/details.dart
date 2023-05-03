import 'package:flutter/material.dart';
import 'package:sample_app/constants/imagespath.dart';
import 'package:sample_app/screens/grain1.dart';
import '../constants/devicesize.dart';
import '../customwidgets/detailsTextField.dart';
import 'package:sample_app/customwidgets/next_button.dart';

import '../finalResponse.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final FocusScopeNode _focusScopeNode = FocusScopeNode();
  List<dynamic> givenDetails = [];
  TextEditingController nameController = TextEditingController();
  TextEditingController aadharController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController studyController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController talukaController = TextEditingController();
  TextEditingController villageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (!_focusScopeNode.hasPrimaryFocus) {
          _focusScopeNode.unfocus();
        }
      },
      child: FocusScope(
        node: _focusScopeNode,
        child: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: Colors.red,
              elevation: 15,
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
              title: const Text("ST Survery App"),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      detailsImage,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Column(children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: devicesize(context).height,
                      child: ListView(
                        padding: const EdgeInsets.only(bottom: 400),
                        children: [
                          const Text(
                            "कृपया तुमची माहिती भरा",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.redAccent),
                            textAlign: TextAlign.center,
                          ),
                          newMethod("नाव", nameController),
                          newMethod("आधार क्रमांक", aadharController),
                          newMethod("फोन नंबर", phoneController),
                          newMethod("वय", ageController),
                          newMethod("लिंग", genderController),
                          newMethod("शिक्षण", studyController),
                          newMethod("जिल्हा", districtController),
                          newMethod("तालुका", talukaController),
                          newMethod(" गाव ", villageController),
                        ],
                      ),
                    ),
                  ]),
                  Positioned(
                      right: 30,
                      bottom: 120,
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              givenDetails.add(nameController.text);
                              givenDetails.add(aadharController.text);
                              givenDetails.add(phoneController.text);
                              givenDetails.add(ageController.text);
                              givenDetails.add(genderController.text);
                              givenDetails.add(studyController.text);
                              givenDetails.add(districtController.text);
                              givenDetails.add(talukaController.text);
                              givenDetails.add(villageController.text);
                              finalResponse['PersonalInfo'] = givenDetails;
                              print(finalResponse);

                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Grain1(
                                            givendetails: [],
                                          )));
                            });
                          },
                          child: nextButton())),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
