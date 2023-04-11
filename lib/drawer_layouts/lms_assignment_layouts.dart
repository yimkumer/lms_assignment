import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lms/drawer_layouts/academics.dart';
import 'package:lms/drawer_layouts/communication.dart';
import 'package:lms/drawer_layouts/human.dart';
import 'package:lms/drawer_layouts/profile.dart';
import 'package:lms/drawer_layouts/settings.dart';
import 'package:lms/drawer_layouts/students.dart';
import 'package:page_transition/page_transition.dart';

import '../home_page_layouts/class_timetable.dart';
import '../home_page_layouts/staff_leave.dart';
import '../home_page_layouts/leave_register.dart';
import '../home_page_layouts/lodge_grivence.dart';
import '../home_page_layouts/notification_setting.dart';
import '../home_page_layouts/std_attendance.dart';
import '../home_page_layouts/std_leave_history.dart';
import '../home_page_layouts/staff_attendance_history.dart';
import 'accounts.dart';
import 'admission.dart';
import '../home_page/drawer.dart';
import 'examinations.dart';
import 'fees.dart';
import 'librarys.dart';
import '../main.dart';

class lms extends StatefulWidget {
  const lms({Key? key}) : super(key: key);

  @override
  State<lms> createState() => _lmsState();
}

class _lmsState extends State<lms> {
  var currentPage = DrawerSections.lms;

  @override
  Widget build(BuildContext context) {
    if (currentPage == DrawerSections.home) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                childCurrent: widget,
                duration: const Duration(milliseconds: 600),
                reverseDuration: const Duration(milliseconds: 600),
                child: const MyApp()),
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
    } else if (currentPage == DrawerSections.profile) {
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
          title: const Text("LMS layouts"),
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

        //to enable Drawer swipe gesture
        drawerEdgeDragWidth: MediaQuery.of(context).size.width,

        //the actual body of the app with all the icons
        body: SingleChildScrollView(
          child: Column(children: [
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

            //Academic Session
            Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                child: Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                                type: PageTransitionType.leftToRightWithFade,
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
                    style: TextStyle(color: Color(0xff890e4f), fontSize: 12),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 20, 30, 0),
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              PageTransition(
                                  type: PageTransitionType.leftToRightWithFade,
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
                      style: TextStyle(color: Color(0xff890e4f), fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 22, 0, 0),
                child: Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                                type: PageTransitionType.leftToRightWithFade,
                                duration: const Duration(milliseconds: 600),
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
                    height: 14,
                  ),
                  const Text(
                    " Leave Register",
                    style: TextStyle(color: Color(0xff890e4f), fontSize: 12),
                  ),
                ]),
              ),
            ]),

            Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 33, 0, 0),
                child: Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                                type: PageTransitionType.leftToRightWithFade,
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
                    "Staff Attendance\n          History",
                    style: TextStyle(color: Color(0xff890e4f), fontSize: 12),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 20, 05, 0),
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              PageTransition(
                                  type: PageTransitionType.leftToRightWithFade,
                                  duration: const Duration(milliseconds: 600),
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
                      style: TextStyle(color: Color(0xff890e4f), fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(21, 35, 0, 0),
                child: Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                                type: PageTransitionType.leftToRightWithFade,
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
                    height: 14,
                  ),
                  const Text(
                    "Student Leave\n       History",
                    style: TextStyle(color: Color(0xff890e4f), fontSize: 12),
                  ),
                ]),
              ),
            ]),

            Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                child: Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                                type: PageTransitionType.leftToRightWithFade,
                                duration: const Duration(milliseconds: 600),
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
                    style: TextStyle(color: Color(0xff890e4f), fontSize: 12),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 15, 15, 0),
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              PageTransition(
                                  type: PageTransitionType.leftToRightWithFade,
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
                      style: TextStyle(color: Color(0xff890e4f), fontSize: 12),
                    ),
                  ],
                ),
              ),
            ]),
          ]),
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
  lms,
  signout,
}
