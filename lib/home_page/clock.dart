import 'package:flutter/material.dart';
import 'package:lms/main.dart';
import 'package:page_transition/page_transition.dart';

class clock extends StatefulWidget {
  const clock({Key? key}) : super(key: key);

  @override
  State<clock> createState() => _clockState();
}

class _clockState extends State<clock> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      //to disable Back gesture to exit
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
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
            backgroundColor: const Color(0xff890e4f),
            title: const Text("Reminder")),
        body: Column(
          children: const [
            SizedBox(
              height: 70,
            ),
            Center(
                child: Icon(
              Icons.calendar_month_sharp,
              color: Colors.grey,
              size: 50,
            )),
            Text(
              "\nNo Day Reminders",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xff890e4f),
          child: const Icon(
            Icons.add,
            size: 35,
          ),
        ),
      ),
    );
  }
}
