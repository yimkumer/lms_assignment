import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../main.dart';

class signed extends StatefulWidget {
  const signed({Key? key}) : super(key: key);

  @override
  State<signed> createState() => _signedState();
}

class _signedState extends State<signed> {
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
          title: const Text("Signed In Accounts"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                //to add space between app bar and the circular image
                const SizedBox(
                  height: 130,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: PhysicalModel(
                    color: Colors.grey.withOpacity(0.4),
                    shape: BoxShape.circle,
                    elevation: 0,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(4, 0, 4, 7),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          "assets/icon.png",
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Demo College\ncoolmjoy@outlook.com\n8918325393",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  width: 30,
                ),
                const Icon(
                  Icons.check,
                  color: Color(0xff890e4f),
                  size: 35,
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness: 2,
              indent: 105,
              endIndent: 40,
            ),
            Row(
              children: const [
                SizedBox(
                  height: 50,
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                    child: Icon(
                      Icons.person_add,
                      size: 40,
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      "Sign-in to Another Account",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    )),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 422,
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
                  'SWITCH ACCOUNT',
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
        ),
      ),
    );
  }
}
