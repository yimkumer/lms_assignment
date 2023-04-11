import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      //to disable Back gesture to exit
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Column(
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
                    radius: 45,
                    backgroundImage: AssetImage(
                      "assets/round.png",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //Elevated form-box
            SizedBox(
              width: 350,
              child: Material(
                elevation: 20.0,
                shadowColor: Colors.black,
                child: TextFormField(
                  showCursor: false,
                  obscureText: false,
                  autofocus: false,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(CupertinoIcons.pen,
                          size: 35, color: Color(0xff890e4f)),
                      hintText: 'Mrittunjoy Das',
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              color: Colors.white, width: 2.0))),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            //elevated text-box
            SizedBox(
              width: 350,
              child: Material(
                elevation: 20.0,
                shadowColor: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    const Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 0, 20),
                        child: Text(
                          "User",
                          style: TextStyle(fontSize: 21),
                        )),

                    //first line
                    Row(
                      children: const [
                        Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 15),
                            child: Icon(
                              Icons.phone,
                              size: 33,
                            )),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text(
                            "8918325393",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),

                    //second line
                    Row(
                      children: const [
                        Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 15),
                            child: Icon(
                              Icons.mail_outline_outlined,
                              size: 33,
                            )),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text(
                            "coolmjoy@outlook.com",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),

                    //third line
                    Row(
                      children: const [
                        Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 15),
                            child: Icon(
                              CupertinoIcons.wrench_fill,
                              size: 33,
                            )),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text(
                            "Staff Id 0014",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),

                    //fourth line
                    Row(
                      children: const [
                        Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 15),
                            child: Icon(
                              CupertinoIcons.person_alt_circle,
                              size: 33,
                            )),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text(
                            "ADMIN",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
