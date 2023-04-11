import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

import '../main.dart';

class thistory extends StatefulWidget {
  const thistory({Key? key}) : super(key: key);

  @override
  State<thistory> createState() => _thistoryState();
}

class _thistoryState extends State<thistory> {
  //creating dynamic list arrays for containing the elements of our drop-down lists
  List<dynamic> year = [];
  List<dynamic> month = [];
  List<dynamic> day = [];
  List<dynamic> staff = [];

  //for mapping the values of drop-down
  String? yearid;
  String? monthid;
  String? dayid;
  String? staffid;

  @override
  void initState() {
    //initializing the list for year drop-down
    year.add({"id": 1, "year": " 2023"});
    year.add({"id": 2, "year": " 2022"});
    year.add({"id": 3, "year": " 2021"});
    year.add({"id": 4, "year": " 2020"});

    //initializing the list for month drop-down
    month.add({"id": 1, "month": "January"});
    month.add({"id": 2, "month": "February"});
    month.add({"id": 3, "month": "March"});
    month.add({"id": 4, "month": "April"});
    month.add({"id": 5, "month": "May"});
    month.add({"id": 6, "month": "June"});
    month.add({"id": 7, "month": "July"});
    month.add({"id": 8, "month": "August"});
    month.add({"id": 9, "month": "September"});
    month.add({"id": 10, "month": "October"});
    month.add({"id": 11, "month": "November"});
    month.add({"id": 12, "month": "December"});

    //initializing the list for day drop-down
    day.add({"id": 1, "day": "None"});
    day.add({"id": 2, "day": "1"});
    day.add({"id": 3, "day": "2"});
    day.add({"id": 4, "day": "3"});
    day.add({"id": 5, "day": "4"});
    day.add({"id": 6, "day": "5"});
    day.add({"id": 7, "day": "6"});
    day.add({"id": 8, "day": "7"});
    day.add({"id": 9, "day": "8"});
    day.add({"id": 10, "day": "9"});
    day.add({"id": 11, "day": "10"});
    day.add({"id": 12, "day": "11"});
    day.add({"id": 13, "day": "12"});
    day.add({"id": 14, "day": "13"});
    day.add({"id": 15, "day": "14"});
    day.add({"id": 16, "day": "15"});
    day.add({"id": 17, "day": "16"});
    day.add({"id": 18, "day": "17"});
    day.add({"id": 19, "day": "18"});
    day.add({"id": 20, "day": "19"});
    day.add({"id": 21, "day": "20"});
    day.add({"id": 22, "day": "21"});
    day.add({"id": 23, "day": "22"});
    day.add({"id": 24, "day": "23"});
    day.add({"id": 25, "day": "24"});
    day.add({"id": 26, "day": "25"});
    day.add({"id": 27, "day": "26"});
    day.add({"id": 28, "day": "27"});
    day.add({"id": 29, "day": "28"});
    day.add({"id": 30, "day": "29"});
    day.add({"id": 31, "day": "30"});

    //initializing the list for staff drop-down
    staff.add({"id": 1, "staff": "Arun Bagchi | (0001)"});
    staff.add({"id": 2, "staff": "Satinath Sarkhel | (0002)"});
    staff.add({"id": 3, "staff": "Manali Pradhan | (0003)"});
    staff.add({"id": 4, "staff": "Argha Deysarkar | (0004)"});
    staff.add({"id": 5, "staff": "Avishek Sadhu | (0005)"});
    staff.add({"id": 6, "staff": "Argha Deysarkar | (0006)"});
    staff.add({"id": 7, "staff": "Sanjit Dhara | (0007)"});
    staff.add({"id": 8, "staff": "Abhijit Hazra | (0008)"});
    staff.add({"id": 9, "staff": "Mrittunjoy Das | (0009)"});
    staff.add({"id": 10, "staff": "Abhijit Haldar | (0010)"});
    staff.add({"id": 11, "staff": "Sujata Panigrahi | (0011)"});
    staff.add({"id": 12, "staff": "Aditri Deysarkar | (0012)"});
    staff.add({"id": 13, "staff": "Dhananjay Burman | (0013)"});
    staff.add({"id": 14, "staff": "Mrittunjoy Das | (0014)"});

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
          title: const Text("Staff Attendance History"),
        ),
        body: Column(children: [
          //to add some space between app bar and the drop-down form
          const SizedBox(
            height: 10,
          ),

          //creating the drop-down form for days
          FormHelper.dropDownWidgetWithLabel(
            context,
            "Select Year",
            "--Select the Year--",
            yearid,
            year,
            (onChangedVal) {
              yearid = onChangedVal;
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
            optionLabel: "year",
          ),

          const SizedBox(
            height: 10,
          ),

          // //creating the drop-down form for classes
          FormHelper.dropDownWidgetWithLabel(
            context,
            "Select Month",
            "--Select the Month--",
            monthid,
            month,
            (onChangedVal) {
              monthid = onChangedVal;
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
            optionLabel: "month",
          ),

          const SizedBox(
            height: 10,
          ),

          // //creating the drop-down form for Course
          FormHelper.dropDownWidgetWithLabel(
            context,
            "Select Day",
            "--Select the Day--",
            dayid,
            day,
            (onChangedVal) {
              dayid = onChangedVal;
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
            optionLabel: "day",
          ),

          Column(children: [
            //to add some space between app bar and the drop-down form
            const SizedBox(
              height: 10,
            ),

            //creating the drop-down form for days
            FormHelper.dropDownWidgetWithLabel(
              context,
              "Select Staff",
              "--Select the Staff--",
              staffid,
              staff,
              (onChangedVal) {
                staffid = onChangedVal;
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
              optionLabel: "staff",
            ),
          ]),

          const SizedBox(
            height: 190,
          ),
          const Divider(
            thickness: 5,
            height: 2,
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
                        reverseDuration: const Duration(milliseconds: 600),
                        child: const MyApp()),
                    (r) => false);
              },
            ),
          ),
        ]),
      ),
    );
  }
}
