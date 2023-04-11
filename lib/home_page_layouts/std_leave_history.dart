import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:flutter/cupertino.dart';
import '../main.dart';

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  //assigning a variable date with date-time format yyyy-dd-mm
  late DateTime date = DateTime.now();
  late DateTime date1 = DateTime.now();

  //creating dynamic list arrays for containing the elements of our drop-down list
  List<dynamic> status = [];
  List<dynamic> course = [];
  List<dynamic> classes = [];
  List<dynamic> roll = [];

  //for mapping the values of drop-down
  String? statusid;
  String? courseid;
  String? classesid;
  String? rollid;

  @override
  void initState() {
    //initializing the list for status drop-down
    status.add({"id": 1, "status": " Applied"});
    status.add({"id": 2, "status": " Approved"});
    status.add({"id": 3, "status": " Rejected"});

    //initializing the list for course drop-down
    course.add({"id": 1, "course": " B.Tech-ECE"});
    course.add({"id": 2, "course": " BCA"});
    course.add({"id": 3, "course": " B.Tech-CE"});
    course.add({"id": 4, "course": " B.Tech-CSE"});
    course.add({"id": 5, "course": " B.Tech-EE"});
    course.add({"id": 6, "course": " B.Tech-ME"});
    course.add({"id": 7, "course": " M.C.A"});
    course.add({"id": 8, "course": " B.Edu-Test"});
    course.add({"id": 9, "course": " Certificate-Swing"});
    course.add({"id": 10, "course": " TT-B.ED."});
    course.add({"id": 11, "course": " B.Tech-cse"});
    course.add({"id": 12, "course": " BE-Instrumentation"});
    course.add({"id": 13, "course": " B.Tech-CS"});
    course.add({"id": 14, "course": " PG-MSC"});
    course.add({"id": 15, "course": " TT-tbc"});

    //initializing the list for class drop-down
    classes.add({"id": 1, "class": " Semester |"});
    classes.add({"id": 2, "class": " Semester ||"});
    classes.add({"id": 3, "class": " Semester |||"});
    classes.add({"id": 4, "class": " Semester |V"});

    //initializing the list for roll no. drop-down
    roll.add({"id": 1, "roll": " 1 "});
    roll.add({"id": 2, "roll": " 2 "});
    roll.add({"id": 3, "roll": " 3 "});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      //to disable Back gesture to exit
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff890e4f),
            leading: IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: const Duration(milliseconds: 600),
                          reverseDuration: const Duration(milliseconds: 600),
                          child: const MyApp()),
                      (r) => false);
                },
                iconSize: 27,
                icon: const Icon(Icons.arrow_back)),
            title: const Text("Student Leaves"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                //to add some space between app bar and the drop-down form
                const SizedBox(
                  height: 10,
                ),

                //creating the drop-down form for status
                FormHelper.dropDownWidgetWithLabel(
                  context,
                  "Select Status",
                  "--Select Status--",
                  statusid,
                  status,
                  (onChangedVal) {
                    statusid = onChangedVal;
                  },
                  (onValidateVal) {
                    return null;
                  },
                  labelBold: false,
                  hintFontSize: 18,
                  labelFontSize: 20,
                  paddingTop: 05,
                  borderColor: Colors.grey,
                  borderFocusColor: const Color(0xff890e4f),
                  borderRadius: 10,
                  optionValue: "id",
                  optionLabel: "status",
                ),

                const SizedBox(
                  height: 10,
                ),

                //creating the drop-down form for Course
                FormHelper.dropDownWidgetWithLabel(
                  context,
                  "Select Course",
                  "--Select a Course--",
                  courseid,
                  course,
                  (onChangedVal) {
                    courseid = onChangedVal;
                  },
                  (onValidateVal) {
                    return null;
                  },
                  labelBold: false,
                  hintFontSize: 18,
                  labelFontSize: 20,
                  paddingTop: 05,
                  borderColor: Colors.grey,
                  borderFocusColor: const Color(0xff890e4f),
                  borderRadius: 10,
                  optionValue: "id",
                  optionLabel: "course",
                ),

                const SizedBox(
                  height: 10,
                ),

                // //creating the drop-down form for classes
                FormHelper.dropDownWidgetWithLabel(
                  context,
                  "Select Class",
                  "--Select a Class--",
                  classesid,
                  classes,
                  (onChangedVal) {
                    classesid = onChangedVal;
                  },
                  (onValidate) {
                    return null;
                  },
                  labelBold: false,
                  hintFontSize: 18,
                  labelFontSize: 18,
                  paddingTop: 05,
                  borderColor: Colors.grey,
                  borderFocusColor: const Color(0xff890e4f),
                  borderRadius: 10,
                  optionValue: "id",
                  optionLabel: "class",
                ),

                const SizedBox(
                  height: 10,
                ),

                // //creating the drop-down form for Roll no.
                FormHelper.dropDownWidgetWithLabel(
                  context,
                  "Select Roll No.",
                  "--Select a Roll no.--",
                  rollid,
                  roll,
                  (onChangedVal) {
                    rollid = onChangedVal;
                  },
                  (onValidate) {
                    return null;
                  },
                  labelBold: false,
                  hintFontSize: 18,
                  labelFontSize: 18,
                  paddingTop: 05,
                  borderColor: Colors.grey,
                  borderFocusColor: const Color(0xff890e4f),
                  borderRadius: 10,
                  optionValue: "id",
                  optionLabel: "roll",
                ),

                const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                        child: Text(
                          "Select Start ",
                          style: TextStyle(fontSize: 17),
                        ))),

                //to display current date
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 05, 0, 10),
                    child: Text(
                      //to display
                      '${date.day}-${date.month}-${date.year}',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          showCupertinoModalPopup(
                              context: context,
                              builder: (context) {
                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Done",
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Color(0xff890e4f)),
                                        ),
                                      ),
                                      Expanded(
                                        child: CupertinoDatePicker(
                                            initialDateTime: date,
                                            //to set the current year
                                            minimumDate: DateTime(2023),
                                            //to set the maximum year
                                            maximumDate: DateTime.now().add(
                                                const Duration(days: 6 * 365)),
                                            mode: CupertinoDatePickerMode.date,
                                            onDateTimeChanged:
                                                (DateTime newdate) {
                                              setState(() {
                                                //to register the change of date
                                                date = newdate;
                                              });
                                            }),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff890e4f),
                        ),
                        child: const Text("Select starting Date")),
                  ),
                ),

                const Divider(
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),

                const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                        child: Text(
                          "Select End",
                          style: TextStyle(fontSize: 17),
                        ))),

                //to display current date
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 05, 0, 10),
                    child: Text(
                      //to display
                      '${date1.day}-${date1.month}-${date1.year}',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          showCupertinoModalPopup(
                              context: context,
                              builder: (context) {
                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Done",
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Color(0xff890e4f)),
                                        ),
                                      ),
                                      Expanded(
                                        child: CupertinoDatePicker(
                                            initialDateTime: date1,
                                            //to set the current year
                                            minimumDate: DateTime(2023),
                                            //to set the maximum year
                                            maximumDate: DateTime.now().add(
                                                const Duration(days: 6 * 365)),
                                            mode: CupertinoDatePickerMode.date,
                                            onDateTimeChanged:
                                                (DateTime newdate) {
                                              setState(() {
                                                //to register the change of date
                                                date1 = newdate;
                                              });
                                            }),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff890e4f),
                        ),
                        child: const Text("Select ending Date")),
                  ),
                ),

                const Divider(
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),
                const SizedBox(
                  height: 150,
                ),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff890e4f)),
                    child: const Text(
                      'FILTER',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          PageTransition(
                              type: PageTransitionType.leftToRightWithFade,
                              duration: const Duration(milliseconds: 600),
                              reverseDuration:
                                  const Duration(milliseconds: 600),
                              child: const MyApp()),
                          (r) => false);
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
