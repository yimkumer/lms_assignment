import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
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
                      "assets/icon.png",
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
                      hintText: 'Demo College',
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
                          "College Information (College Code: dc)",
                          style: TextStyle(fontSize: 19),
                        )),

                    //first line
                    Row(
                      children: const [
                        Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 15),
                            child: Icon(
                              Icons.pin_drop_sharp,
                              size: 33,
                            )),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text(
                            "Demo Street,\nDemo City 1 - 123456",
                            style: TextStyle(fontSize: 17),
                          ),
                        )
                      ],
                    ),

                    //second line
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
                            "9831352959",
                            style: TextStyle(fontSize: 17),
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
                              Icons.mail_outline_outlined,
                              size: 33,
                            )),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text(
                            "testreserve7@gmail.com",
                            style: TextStyle(fontSize: 17),
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
                              CupertinoIcons.mic_circle_fill,
                              size: 35,
                            )),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text(
                            "English",
                            style: TextStyle(fontSize: 17),
                          ),
                        )
                      ],
                    ),

                    //fifth line
                    Row(
                      children: const [
                        Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 15),
                            child: Icon(
                              CupertinoIcons.house_fill,
                              size: 33,
                            )),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text(
                            "Dr.A.P.J. Abdul Kalam\nTechnical University",
                            style: TextStyle(fontSize: 17),
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
