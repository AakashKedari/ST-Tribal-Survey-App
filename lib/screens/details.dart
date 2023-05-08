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
  TextEditingController studyController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController talukaController = TextEditingController();
  TextEditingController villageController = TextEditingController();
  dynamic dropdownValue;

  final List<DropdownMenuItem<dynamic>> _dropdownItems = [
    const DropdownMenuItem<dynamic>(value: 'Female', child: Text('M')),
    const DropdownMenuItem<dynamic>(value: 'Male', child: Text('F')),
    const DropdownMenuItem<dynamic>(value: 'Transgender', child: Text('T')),
  ];
  @override
  void dispose() {
    nameController.dispose();
    aadharController.dispose();
    phoneController.dispose();
    ageController.dispose();
    studyController.dispose();
    districtController.dispose();
    talukaController.dispose();
    villageController.dispose();
    super.dispose();
  }

  checkForErrors() {
    if ((nameController.text.isEmpty ||
        aadharController.text.isEmpty ||
        villageController.text.trim().isEmpty ||
        phoneController.text.trim().isEmpty ||
        ageController.text.trim().isEmpty ||
        studyController.text.trim().isEmpty ||
        districtController.text.trim().isEmpty ||
        talukaController.text.trim().isEmpty)) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Please fill all details"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Okay"))
                ],
              ));
    } else if (double.tryParse(aadharController.text) == null ||
        double.tryParse(aadharController.text)! <= 0 ||
        aadharController.text.length != 12) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("वैध आधार क्रमांक टाका..."),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Okay"))
                ],
              ));
    } else if (double.tryParse(phoneController.text) == null ||
        phoneController.text.length != 10) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Enter valid Mobile Number..."),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Okay"))
                ],
              ));
    } else if (double.tryParse(ageController.text) == null) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("वैध वय करा"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Okay"))
                ],
              ));
    } else {
      givenDetails.add(nameController.text);
      givenDetails.add(aadharController.text);
      givenDetails.add(phoneController.text);
      givenDetails.add(ageController.text);
      givenDetails.add(dropdownValue);
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
    }
  }

  @override
  Widget build(BuildContext context) {
    //To measure the height that the keyboard will occupy when we start to fill the data in the textfield.
    final double keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    return GestureDetector(
      // In order to unselect the List Tile when we press on empty background space, we use gester detector
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
              // backgroundColor: const Color.fromARGB(255, 72, 155, 194),
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
              title: const Text("वैयक्तिक माहिती"),
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
                    Padding(
                      // Here we add the padding from bottom with the size that the keyboard is gonna occupy while typing
                      padding: EdgeInsets.fromLTRB(
                          8.0, 8.0, 8.0, keyboardSpace + 8.0),
                      child: SizedBox(
                        height: devicesize(context).height,
                        child: ListView(
                          padding: EdgeInsets.only(bottom: keyboardSpace + 100),
                          children: [
                            const Text(
                              "कृपया तुमची माहिती भरा",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            newMethod("नाव", nameController),
                            newMethod("आधार क्रमांक", aadharController),
                            newMethod("फोन नंबर", phoneController),
                            newMethod("वय", ageController),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black38),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10))

                                    // floatingLabelBehavior: FloatingLabelBehavior.always,
                                    ),
                                child: ListTile(
                                  title: const Text("लिंग"),
                                  trailing: DropdownButton(
                                    value: dropdownValue,
                                    items: _dropdownItems,
                                    icon: const Icon(Icons.arrow_downward),
                                    onChanged: (dynamic newValue) {
                                      setState(() {
                                        dropdownValue = newValue;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            newMethod("शिक्षण", studyController),
                            newMethod("जिल्हा", districtController),
                            newMethod("तालुका", talukaController),
                            newMethod(" गाव ", villageController),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  Positioned(
                      right: 30,
                      bottom: 140,
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              checkForErrors();
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
