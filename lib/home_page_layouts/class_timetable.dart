import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

import '../main.dart';

class timetable extends StatefulWidget {
  const timetable({Key? key}) : super(key: key);

  @override
  State<timetable> createState() => _timetableState();
}

class _timetableState extends State<timetable> {
  //creating dynamic list arrays for containing the elements of our drop-down lists
  List<dynamic> day = [];
  List<dynamic> classes = [];
  List<dynamic> course = [];

  //for mapping the values of drop-down
  String? dayId;
  String? classesid;
  String? courseid;

  @override
  void initState() {
    //initializing the list for day drop-down
    day.add({"id": 1, "day": " All"});
    day.add({"id": 2, "day": " Sunday"});
    day.add({"id": 3, "day": " Monday"});
    day.add({"id": 4, "day": " Tuesday"});
    day.add({"id": 5, "day": " Wednesday"});
    day.add({"id": 6, "day": " Thursday"});
    day.add({"id": 7, "day": " Friday"});
    day.add({"id": 8, "day": " Saturday"});

    //initializing the list for classes drop-down
    classes.add({"id": 1, "class": " Semester |"});
    classes.add({"id": 2, "class": " Year |"});
    classes.add({"id": 3, "class": " Semester ||"});
    classes.add({"id": 4, "class": " Year ||"});
    classes.add({"id": 5, "class": " Semester |||"});
    classes.add({"id": 6, "class": " Year |||"});
    classes.add({"id": 7, "class": " Semester |V"});
    classes.add({"id": 8, "class": " Year |V"});
    classes.add({"id": 9, "class": " Semester V"});
    classes.add({"id": 10, "class": " Year V"});
    classes.add({"id": 11, "class": " Semester V|"});
    classes.add({"id": 12, "class": " Year V|"});
    classes.add({"id": 13, "class": " Semester V||"});
    classes.add({"id": 14, "class": " Year V||"});
    classes.add({"id": 15, "class": " Semester V|||"});
    classes.add({"id": 16, "class": " Year V|||"});
    classes.add({"id": 17, "class": " Semester |X"});
    classes.add({"id": 18, "class": " Year |X"});

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
          title: const Text("Class Timetable"),
        ),
        body: Column(
          children: [
            //to add some space between app bar and the drop-down form
            const SizedBox(
              height: 10,
            ),

            //creating the drop-down form for days
            FormHelper.dropDownWidgetWithLabel(
              context,
              "Select Day",
              "--Select a Day--",
              dayId,
              day,
              (onChangedVal) {
                dayId = onChangedVal;
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
              optionLabel: "day",
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

            // //creating the drop-down form for Course
            FormHelper.dropDownWidgetWithLabel(
              context,
              "Select Course",
              "--Select a Course--",
              courseid,
              course,
              (onChangedVal) {
                courseid = onChangedVal;
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
              optionLabel: "course",
            ),

            const SizedBox(
              height: 40,
            ),
            const Icon(
              Icons.access_time,
              size: 50,
              color: Colors.grey,
            ),
            const Text(
              "\nTimetable",
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
