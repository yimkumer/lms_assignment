import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import '../main.dart';

class aleave extends StatefulWidget {
  const aleave({Key? key}) : super(key: key);

  @override
  State<aleave> createState() => _aleaveState();
}

class _aleaveState extends State<aleave> {
  //assigning a variable date with date-time format yyyy-dd-mm
  late DateTime date = DateTime.now();
  late DateTime date1 = DateTime.now();

  //creating dynamic list arrays for containing the elements of our drop-down list
  List<dynamic> leave = [];

  //for mapping the values of drop-down
  String? leaveid;

  //Text state controllers
  final _controller = TextEditingController();

  //to enable text form color change on tap
  late FocusNode focus;

  @override
  void initState() {
    // initializing the list for leave drop-down
    leave.add({"id": 1, "type": " CL"});
    leave.add({"id": 2, "type": " ML"});
    leave.add({"id": 3, "type": " Unpaid"});

    //initializing the current date function
    date = DateTime.now();
    date1 = DateTime.now();

    //initializing focus
    focus = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    //disposing text controllers
    _controller.dispose();

    //disposing focus
    focus.dispose();
    super.dispose();
  }

  void rfocus() {
    setState(() {
      //setting the state for recognizing focus state
      FocusScope.of(context).requestFocus(focus);
    });
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
          title: const Text(
            "Staff Leave Application",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 17),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.paperclip,
                  size: 27,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.send,
                  size: 27,
                )),
          ],
        ),
        body: GestureDetector(
          //to unfocus the textform fields when tapping on any other part of the screen
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    //to add space between app bar and the circular image
                    const SizedBox(
                      height: 95,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: PhysicalModel(
                        color: Colors.grey.withOpacity(0.4),
                        shape: BoxShape.circle,
                        elevation: 0,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(3, 0, 3, 6),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              "assets/round.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(children: const [
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 02),
                          child: Text(
                            "Mrittunjoy Das ",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlueAccent),
                          )),
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "Teaching Staff ID: 0014",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )),
                    ]),
                  ],
                ),
                const Divider(
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),

                //creating the drop-down form for leave type
                FormHelper.dropDownWidgetWithLabel(
                  context,
                  "Select Leave Type",
                  "--Select a type--",
                  leaveid,
                  leave,
                  (onChangedVal) {
                    leaveid = onChangedVal;
                  },
                  (onValidateVal) {
                    return null;
                  },
                  labelBold: false,
                  hintFontSize: 17,
                  labelFontSize: 16,
                  paddingTop: 05,
                  borderColor: Colors.grey,
                  borderFocusColor: const Color(0xff890e4f),
                  borderRadius: 10,
                  optionValue: "id",
                  optionLabel: "type",
                ),

                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 0, 05),
                      child: Text(
                        "Leave Taken 0 Days ",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text(
                        "Remaining Leave 15 Days",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )),
                ),

                const Divider(
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),

                const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 05, 0, 0),
                        child: Text(
                          "Select Leave From",
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
                        child: const Text("Select a date")),
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
                        padding: EdgeInsets.fromLTRB(30, 05, 0, 0),
                        child: Text(
                          "Select Leave Upto",
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
                                                (DateTime newdate1) {
                                              setState(() {
                                                //to register the change of date
                                                date1 = newdate1;
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
                        child: const Text("Select a date")),
                  ),
                ),

                const Divider(
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),

                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 00, 0, 0),
                      child: TextFormField(
                        controller: _controller,

                        maxLines: 04,
                        //calling the focus
                        focusNode: focus,
                        //setting the focus state
                        onTap: rfocus,
                        decoration: InputDecoration(
                          labelText: "Write Reason of Leave",
                          labelStyle: TextStyle(
                            //to change color depending on focus state
                            color:
                                focus.hasFocus ? Colors.pink[900] : Colors.grey,
                            fontSize: 21,
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff890e4f)),
                          ),
                        ),
                      ),
                    )),

                const SizedBox(
                  height: 30,
                ),
                const Align(
                    alignment: Alignment.center,
                    child: Icon(
                      CupertinoIcons.paperclip,
                      size: 40,
                      color: Colors.grey,
                    )),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "No Attachment",
                    style:
                        TextStyle(fontSize: 20, color: Colors.grey, height: 02),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
