import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:flutter/cupertino.dart';
import '../main.dart';

class leave_register extends StatefulWidget {
  const leave_register({Key? key}) : super(key: key);

  @override
  State<leave_register> createState() => _leave_registerState();
}

class _leave_registerState extends State<leave_register> {
  //assigning a variable date to display current date
  late DateTime date = DateTime.now();
  late DateTime date1 = DateTime.now();

  //creating dynamic list arrays for containing the elements of our drop-down list
  List<dynamic> status = [];
  List<dynamic> leave = [];
  List<dynamic> staff = [];

  //for mapping the values of drop-down
  String? statusid;
  String? leaveid;
  String? staffid;

  @override
  void initState() {
    //initializing the list for status drop-down
    status.add({"id": 1, "status": " Applied"});
    status.add({"id": 2, "status": " Approved"});
    status.add({"id": 3, "status": " Rejected"});

    //initializing the list for leave type drop-down
    leave.add({"id": 1, "leave": " CL"});
    leave.add({"id": 2, "leave": " ML"});
    leave.add({"id": 3, "leave": " Unpaid"});

    //initializing the list for staff drop-down
    staff.add({"id": 1, "staff": "Arun Bagchi | 0001"});
    staff.add({"id": 2, "staff": "Satinath Sarkhel | 0002"});
    staff.add({"id": 3, "staff": "Manali Pradhan | 0003"});
    staff.add({"id": 4, "staff": "Argha Deysarkar | 0004"});
    staff.add({"id": 5, "staff": "Avishek Sadhu | 0005"});
    staff.add({"id": 6, "staff": "Argha Deysarkar | 0006"});
    staff.add({"id": 7, "staff": "Sanjit Dhara | 0007"});
    staff.add({"id": 8, "staff": "Abhijit Hazra | 0008"});
    staff.add({"id": 9, "staff": "Mrittunjoy Das | 0009"});
    staff.add({"id": 10, "staff": "Abhijit Haldar | 0010"});
    staff.add({"id": 11, "staff": "Sujata Panigrahi | 0011"});
    staff.add({"id": 12, "staff": "Aditri Deysarkar | 0012"});
    staff.add({"id": 13, "staff": "Dhananjay Burman | 0013"});
    staff.add({"id": 14, "staff": "Mrittunjoy Das | 0014"});

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
          title: const Text("Filter Leaves"),
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

            //creating the drop-down form for leave type
            FormHelper.dropDownWidgetWithLabel(
              context,
              "Select Leave type",
              "--Select a Leave Type--",
              leaveid,
              leave,
              (onChangedVal) {
                leaveid = onChangedVal;
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
              optionLabel: "leave",
            ),

            const SizedBox(
              height: 10,
            ),

            // //creating the drop-down form for staff
            FormHelper.dropDownWidgetWithLabel(
              context,
              "Select Staff",
              "--Select a Staff--",
              staffid,
              staff,
              (onChangedVal) {
                staffid = onChangedVal;
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
              optionLabel: "staff",
            ),

            const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
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
                              height: MediaQuery.of(context).size.height * 0.35,
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
                                        maximumDate: DateTime.now()
                                            .add(const Duration(days: 6 * 365)),
                                        mode: CupertinoDatePickerMode.date,
                                        onDateTimeChanged: (DateTime newdate) {
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
                              height: MediaQuery.of(context).size.height * 0.35,
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
                                        maximumDate: DateTime.now()
                                            .add(const Duration(days: 6 * 365)),
                                        mode: CupertinoDatePickerMode.date,
                                        onDateTimeChanged: (DateTime newdate) {
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
                          reverseDuration: const Duration(milliseconds: 600),
                          child: const MyApp()),
                      (r) => false);
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
