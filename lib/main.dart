import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lms/drawer_layouts/academics.dart';
import 'package:lms/home_page/clock.dart';
import 'package:lms/drawer_layouts/communication.dart';
import 'package:lms/drawer_layouts/human.dart';
import 'package:lms/drawer_layouts/librarys.dart';
import 'package:lms/drawer_layouts/profile.dart';
import 'package:lms/drawer_layouts/settings.dart';
import 'package:lms/drawer_layouts/students.dart';
import 'package:lms/home_page_layouts/std_attendance.dart';
import 'package:lms/home_page/signed_in_accounts.dart';
import 'package:page_transition/page_transition.dart';

import 'drawer_layouts/accounts.dart';
import 'drawer_layouts/admission.dart';
import 'drawer_layouts/lms_assignment_layouts.dart';
import 'home_page/drawer.dart';
import 'drawer_layouts/examinations.dart';
import 'drawer_layouts/fees.dart';
import 'home_page_layouts/staff_leave.dart';
import 'home_page_layouts/std_leave_history.dart';
import 'home_page_layouts/leave_register.dart';
import 'home_page_layouts/lodge_grivence.dart';
import 'home_page_layouts/notification_setting.dart';
import 'home_page_layouts/staff_attendance_history.dart';
import 'home_page_layouts/class_timetable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:
          false, //to remove the debug banner when running app
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //to identify the current page
  var currentPage = DrawerSections.home;

  @override
  Widget build(BuildContext context) {
    if (currentPage == DrawerSections.profile) {
      //Page Navigation with Transition animation
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                childCurrent: widget,
                duration: const Duration(milliseconds: 600),
                reverseDuration: const Duration(milliseconds: 600),
                child: const profile()),
            (r) => false);
      });
    } else if (currentPage == DrawerSections.settings) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                childCurrent: widget,
                duration: const Duration(milliseconds: 600),
                reverseDuration: const Duration(milliseconds: 600),
                child: const settings()),
            (r) => false);
      });
    } else if (currentPage == DrawerSections.communication) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                childCurrent: widget,
                duration: const Duration(milliseconds: 600),
                reverseDuration: const Duration(milliseconds: 600),
                child: const communication()),
            (r) => false);
      });
    } else if (currentPage == DrawerSections.academics) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                childCurrent: widget,
                duration: const Duration(milliseconds: 600),
                reverseDuration: const Duration(milliseconds: 600),
                child: const academics()),
            (r) => false);
      });
    } else if (currentPage == DrawerSections.students) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                childCurrent: widget,
                duration: const Duration(milliseconds: 600),
                reverseDuration: const Duration(milliseconds: 600),
                child: const students()),
            (r) => false);
      });
    } else if (currentPage == DrawerSections.human) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                childCurrent: widget,
                duration: const Duration(milliseconds: 600),
                reverseDuration: const Duration(milliseconds: 600),
                child: const human()),
            (r) => false);
      });
    } else if (currentPage == DrawerSections.examinations) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                childCurrent: widget,
                duration: const Duration(milliseconds: 600),
                reverseDuration: const Duration(milliseconds: 600),
                child: const examinations()),
            (r) => false);
      });
    } else if (currentPage == DrawerSections.fees) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                childCurrent: widget,
                duration: const Duration(milliseconds: 600),
                reverseDuration: const Duration(milliseconds: 600),
                child: const fees()),
            (r) => false);
      });
    } else if (currentPage == DrawerSections.library) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                childCurrent: widget,
                duration: const Duration(milliseconds: 600),
                reverseDuration: const Duration(milliseconds: 600),
                child: const librarys()),
            (r) => false);
      });
    } else if (currentPage == DrawerSections.accounts) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                childCurrent: widget,
                duration: const Duration(milliseconds: 600),
                reverseDuration: const Duration(milliseconds: 600),
                child: const accounts()),
            (r) => false);
      });
    } else if (currentPage == DrawerSections.admission) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                childCurrent: widget,
                duration: const Duration(milliseconds: 600),
                reverseDuration: const Duration(milliseconds: 600),
                child: const admission()),
            (r) => false);
      });
    } else if (currentPage == DrawerSections.lms) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                childCurrent: widget,
                duration: const Duration(milliseconds: 600),
                reverseDuration: const Duration(milliseconds: 600),
                child: const lms()),
            (r) => false);
      });
    } else if (currentPage == DrawerSections.signout) {
      exit(0);
    }

    return WillPopScope(
      //to disable Back gesture to exit
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff890e4f),
          title: const Text("Home"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeftWithFade,
                        childCurrent: widget,
                        duration: const Duration(milliseconds: 600),
                        reverseDuration: const Duration(milliseconds: 600),
                        child: const clock()),
                    (r) => false);
              },
              iconSize: 27,
              icon: const Icon(Icons.alarm),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeftWithFade,
                        childCurrent: widget,
                        duration: const Duration(milliseconds: 600),
                        reverseDuration: const Duration(milliseconds: 600),
                        child: const signed()),
                    (r) => false);
              },
              icon: const Icon(Icons.candlestick_chart_outlined),
              iconSize: 27,
            )
          ],
        ),

        //Drawer for the side bar
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const drawer(),
                drawerlist(),
              ],
            ),
          ),
        ),
        //to enable Drawer horizontal-swipe gesture from any part of the screen
        drawerEdgeDragWidth: MediaQuery.of(context).size.width,

        //the actual body of the app with all the icons
        body: SingleChildScrollView(
          child: Column(
            children: [
              //to add space between app bar and the circular image
              const SizedBox(
                height: 20,
              ),
              Center(
                child: PhysicalModel(
                  color: Colors.grey.withOpacity(0.4),
                  shape: BoxShape.circle,
                  elevation: 0,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(4, 0, 4, 7),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        "assets/icon.png",
                      ),
                    ),
                  ),
                ),
              ),

              //First Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.notifications,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Notifications",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 10, 60, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.send,
                            color: Color(0xff890e4f),
                            size: 41,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "  Compose\nNotification",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            CupertinoIcons.chat_bubble_2_fill,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Chat",
                          style: TextStyle(
                              color: Color(0xff890e4f), fontSize: 12)),
                    ]),
                  ),
                ],
              ),

              //Second Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 18, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.task_alt,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Mark Student\n  Attendance",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 05, 20, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            CupertinoIcons.checkmark,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Staff Attendance",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 05, 0, 0),
                    child: Column(children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                PageTransition(
                                    type:
                                        PageTransitionType.leftToRightWithFade,
                                    duration: const Duration(milliseconds: 600),
                                    reverseDuration:
                                        const Duration(milliseconds: 600),
                                    child: const timetable()),
                                (r) => false);
                          },
                          icon: const Icon(
                            CupertinoIcons.clock,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Class Timetable",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Third Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 20, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.watch_sharp,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Teacher Timetable",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 20, 19, 0),
                    child: Column(children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                PageTransition(
                                    type:
                                        PageTransitionType.leftToRightWithFade,
                                    duration: const Duration(milliseconds: 600),
                                    reverseDuration:
                                        const Duration(milliseconds: 600),
                                    child: const aleave()),
                                (r) => false);
                          },
                          icon: const Icon(
                            Icons.create,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Staff Leave",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            CupertinoIcons.pencil_ellipsis_rectangle,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Student Leave",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Fourth Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 20, 0, 0),
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType
                                          .leftToRightWithFade,
                                      duration:
                                          const Duration(milliseconds: 600),
                                      reverseDuration:
                                          const Duration(milliseconds: 600),
                                      child: const leave_register()),
                                  (r) => false);
                            },
                            icon: const Icon(
                              Icons.grid_on,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Leave Register",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                    child: Column(children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                PageTransition(
                                    type:
                                        PageTransitionType.leftToRightWithFade,
                                    duration: const Duration(milliseconds: 600),
                                    reverseDuration:
                                        const Duration(milliseconds: 600),
                                    child: const history()),
                                (r) => false);
                          },
                          icon: const Icon(
                            Icons.assignment,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Student Leave\n       History",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(27, 30, 0, 0),
                    child: Column(children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                PageTransition(
                                    type:
                                        PageTransitionType.leftToRightWithFade,
                                    duration: const Duration(milliseconds: 600),
                                    reverseDuration:
                                        const Duration(milliseconds: 600),
                                    child: const thistory()),
                                (r) => false);
                          },
                          icon: const Icon(
                            Icons.notes_sharp,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Staff Attendance\n         History",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Fifth Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(08, 20, 0, 0),
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType
                                          .leftToRightWithFade,
                                      duration:
                                          const Duration(milliseconds: 600),
                                      reverseDuration:
                                          const Duration(milliseconds: 600),
                                      child: const std()),
                                  (r) => false);
                            },
                            icon: const Icon(
                              Icons.receipt_long_sharp,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Student Attendance",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 20, 15, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            CupertinoIcons.money_dollar_circle,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Fees Collection",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            CupertinoIcons.book,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Book Register",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Sixth Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              CupertinoIcons.arrow_turn_up_right,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Book Issue",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 20, 05, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            CupertinoIcons.arrow_turn_up_left,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Book Return",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 25, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.view_list,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "  Book Issue Register",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Seventh Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.bar_chart_sharp,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Fees Collection\n        History",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 35, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.battery_charging_full_sharp,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Monthly Salary",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(13, 15, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.photo,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "  Pay Slips",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Eighth Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              CupertinoIcons.plus,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Add Examination",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 35, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.pending_actions,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Examinations",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.map_sharp,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Marksheet",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Ninth Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType
                                          .leftToRightWithFade,
                                      duration:
                                          const Duration(milliseconds: 600),
                                      reverseDuration:
                                          const Duration(milliseconds: 600),
                                      child: const lodge()),
                                  (r) => false);
                            },
                            icon: const Icon(
                              CupertinoIcons.hammer_fill,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Lodge Grivence",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 21, 35, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.folder_open_sharp,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "Grivences",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(13, 18, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.local_play,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        " Lesson Plan",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Tenth Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.calendar_month_sharp,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Academic Calendar",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(33, 20, 35, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.wifi_tethering,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Syllabus",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.book,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "   Book List",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Eleventh Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              CupertinoIcons.arrow_right_circle,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Income",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 20, 38, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.arrow_circle_left_outlined,
                            color: Color(0xff890e4f),
                            size: 47,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Expenditure",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(05, 20, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.file_copy_outlined,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "I/E Statement",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Twelve`th Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              CupertinoIcons.mail,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Requisitions",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(51, 25, 40, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.shopping_cart_sharp,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 09,
                      ),
                      Text(
                        "Purchase",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.water_drop,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "Usage",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Thirteen`th Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              CupertinoIcons.calendar,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Academic Session",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 45, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            CupertinoIcons.stopwatch,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Timetables",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(07, 20, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            CupertinoIcons.person_2_alt,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Staffs",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Fourteen`th Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(28, 20, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              CupertinoIcons.alarm,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Working Shift",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(37, 27, 30, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            CupertinoIcons.chart_bar_alt_fill,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Monthly Salary\n      Report",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(06, 20, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            CupertinoIcons.gear_solid,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 09,
                      ),
                      Text(
                        "Fees Period",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Fifteen`th Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 10, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              CupertinoIcons.star_circle,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Fees Structure",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(28, 22, 10, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.trending_up_sharp,
                            color: Color(0xff890e4f),
                            size: 45,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Fees Collection\n         Report",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(07, 08, 0, 0),
                    child: Column(children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                PageTransition(
                                    type:
                                        PageTransitionType.leftToRightWithFade,
                                    duration: const Duration(milliseconds: 600),
                                    reverseDuration:
                                        const Duration(milliseconds: 600),
                                    child: const nsetting()),
                                (r) => false);
                          },
                          icon: const Icon(
                            Icons.circle_notifications_sharp,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Notification Setting",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Sixteen`th Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 20, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.school_sharp,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Students",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 20, 10, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.person_add,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Student Admission",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.man,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Class Teacher",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Seventeen`th Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.money_outlined,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          " Collection",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(36, 21, 15, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.grid_on,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Collection Report",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.question_mark_sharp,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Question Sets ",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Seventeen`th Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 20, 0, 0),
                    child: Column(
                      children: const [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.videocam_sharp,
                              color: Color(0xff890e4f),
                              size: 43,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "E-Learning",
                          style:
                              TextStyle(color: Color(0xff890e4f), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(56, 20, 40, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.phone_android,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "E-Library",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                    child: Column(children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.phone,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Admission Query ",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ]),
                  ),
                ],
              ),

              //Eighteen`th Row
              Row(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Column(
                    children: const [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.star_border_sharp,
                            color: Color(0xff890e4f),
                            size: 43,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Faculty Rating",
                        style:
                            TextStyle(color: Color(0xff890e4f), fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  //calling the drawer list for Drawer
  Widget drawerlist() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        //to display the lists in Menu drawer
        children: [
          menuItem(1, "Home", Icons.home,
              currentPage == DrawerSections.home ? true : false),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 15,
          ),
          menuItem(2, "Profile", Icons.person,
              currentPage == DrawerSections.profile ? true : false),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 15,
          ),
          menuItem(3, "Settings", Icons.settings,
              currentPage == DrawerSections.settings ? true : false),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 15,
          ),
          menuItem(4, "Communication", Icons.notifications,
              currentPage == DrawerSections.communication ? true : false),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 15,
          ),
          menuItem(5, "Academics", Icons.watch_later_outlined,
              currentPage == DrawerSections.academics ? true : false),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 15,
          ),
          menuItem(6, "Students", Icons.badge_outlined,
              currentPage == DrawerSections.students ? true : false),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 15,
          ),
          menuItem(7, "Human Resource", Icons.people_alt_sharp,
              currentPage == DrawerSections.human ? true : false),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 15,
          ),
          menuItem(8, "Examinations", Icons.assignment_outlined,
              currentPage == DrawerSections.examinations ? true : false),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 15,
          ),
          menuItem(9, "Fees", Icons.attach_money_sharp,
              currentPage == DrawerSections.fees ? true : false),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 15,
          ),
          menuItem(10, "Library", Icons.menu_book_sharp,
              currentPage == DrawerSections.library ? true : false),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 15,
          ),
          menuItem(11, "Accounts & Inventory", Icons.shopping_cart_sharp,
              currentPage == DrawerSections.accounts ? true : false),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 15,
          ),
          menuItem(12, "Admission", Icons.receipt_long_rounded,
              currentPage == DrawerSections.admission ? true : false),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 15,
          ),
          menuItem(13, "LMS Layouts", CupertinoIcons.lightbulb_fill,
              currentPage == DrawerSections.lms ? true : false),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 15,
          ),
          menuItem(14, "Sign Out", Icons.arrow_circle_left_outlined,
              currentPage == DrawerSections.signout ? true : false),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "V 1.0.0\n\n @YIM",
            style: TextStyle(fontSize: 15, height: 1, letterSpacing: 2),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.home;
            } else if (id == 2) {
              currentPage = DrawerSections.profile;
            } else if (id == 3) {
              currentPage = DrawerSections.settings;
            } else if (id == 4) {
              currentPage = DrawerSections.communication;
            } else if (id == 5) {
              currentPage = DrawerSections.academics;
            } else if (id == 6) {
              currentPage = DrawerSections.students;
            } else if (id == 7) {
              currentPage = DrawerSections.human;
            } else if (id == 8) {
              currentPage = DrawerSections.examinations;
            } else if (id == 9) {
              currentPage = DrawerSections.fees;
            } else if (id == 10) {
              currentPage = DrawerSections.library;
            } else if (id == 11) {
              currentPage = DrawerSections.accounts;
            } else if (id == 12) {
              currentPage = DrawerSections.admission;
            } else if (id == 13) {
              currentPage = DrawerSections.lms;
            } else if (id == 14) {
              currentPage = DrawerSections.signout;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(11),
          child: Row(
            children: [
              Expanded(
                  child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              )),
              Expanded(
                flex: 8,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  home,
  profile,
  settings,
  communication,
  academics,
  students,
  human,
  examinations,
  fees,
  library,
  accounts,
  admission,
  signout,
  lms,
}
