import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../main.dart';

class nsetting extends StatefulWidget {
  const nsetting({Key? key}) : super(key: key);

  @override
  State<nsetting> createState() => _nsettingState();
}

class _nsettingState extends State<nsetting> {
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
          title: const Text("Notification Setting"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 27,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  size: 27,
                )),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Center(
                child: Icon(
              Icons.school_sharp,
              color: Colors.grey,
              size: 40,
            )),
            const Text(
              "\n  Students for whom you want to receive",
              style: TextStyle(fontSize: 17, height: 1.5, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const Text(
              " notifications e.g. Classwork,Homework,Holiday",
              style: TextStyle(fontSize: 16, height: 1.5, color: Colors.grey),
            ),
            const Text(
              "etc.",
              style: TextStyle(fontSize: 16, height: 1.5, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 350,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff890e4f)),
                child: const Text(
                  '+ ADD FIRST STUDENT',
                  style: TextStyle(fontSize: 15),
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
        ),
      ),
    );
  }
}
