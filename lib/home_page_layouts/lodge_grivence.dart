import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../main.dart';

class lodge extends StatefulWidget {
  const lodge({Key? key}) : super(key: key);

  @override
  State<lodge> createState() => _lodgeState();
}

class _lodgeState extends State<lodge> {
  //Text state controllers
  final _controller = TextEditingController();
  final _controller1 = TextEditingController();

  //to enable text form color change on tap
  late FocusNode focus;
  late FocusNode focus1;

  @override
  void initState() {
    //initializing focus
    focus = FocusNode();
    focus1 = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    //disposing text controllers
    _controller.dispose();
    _controller1.dispose();

    //disposing focus
    focus.dispose();
    focus1.dispose();
    super.dispose();
  }

  void rfocus() {
    setState(() {
      //setting the state for recognizing focus state
      FocusScope.of(context).requestFocus(focus);
    });
  }

  void rfocus1() {
    setState(() {
      //setting the state for recognizing focus state
      FocusScope.of(context).requestFocus(focus1);
    });
  }

  //this will be used to validate if the textfields are empty or not when saving
  bool _validate = false;

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
          title: const Text("Lodge Grivence"),
        ),
        body: GestureDetector(
          //to unfocus the textform fields when tapping on any other part of the screen
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: TextFormField(
                    controller: _controller,
                    //calling the focus
                    focusNode: focus,
                    //setting the focus state
                    onTap: rfocus,
                    decoration: InputDecoration(
                      labelText: "Title*",
                      labelStyle: TextStyle(
                        //to change color depending on focus state
                        color: focus.hasFocus ? Colors.pink[900] : Colors.grey,
                        fontSize: 21,
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff890e4f)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextFormField(
                    controller: _controller1,
                    maxLines: 09,
                    //calling the focus
                    focusNode: focus1,
                    //setting the focus state
                    onTap: rfocus1,
                    decoration: InputDecoration(
                      labelText: "Type Description*",
                      labelStyle: TextStyle(
                        //to change color depending on focus state
                        color: focus1.hasFocus ? Colors.pink[900] : Colors.grey,
                        fontSize: 21,
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff890e4f)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 305,
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
                      'SAVE',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () async {
                      //if the any of the field is empty to display error
                      if (_controller.text.isEmpty
                          ? _validate = true
                          : _validate = false || _controller1.text.isEmpty
                              ? _validate = true
                              : _validate = false) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const AlertDialog(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  side: BorderSide(color: Colors.red),
                                ),
                                alignment: Alignment.center,
                                icon: Icon(
                                  Icons.error,
                                  size: 40,
                                ),
                                iconColor: Colors.red,
                                title: Text(
                                  'Error!',
                                  style: TextStyle(
                                    color: Colors.red,
                                    letterSpacing: 3,
                                    fontSize: 30,
                                  ),
                                ),
                                content: Text(
                                  'Please fill up both fields',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    letterSpacing: 1,
                                  ),
                                ),
                              );
                            });
                      } else {
                        //if both the fields are entered
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const AlertDialog(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  side: BorderSide(color: Colors.green),
                                ),
                                alignment: Alignment.center,
                                icon: Icon(
                                  Icons.check_circle,
                                  size: 40,
                                ),
                                iconColor: Colors.green,
                                title: Text(
                                  'Success!',
                                  style: TextStyle(
                                    color: Colors.green,
                                    letterSpacing: 3,
                                    fontSize: 30,
                                  ),
                                ),
                                content: Text(
                                  'Grievence has been Lodged',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    letterSpacing: 1,
                                  ),
                                ),
                              );
                            });

                        //to reset the text fields if saved successfully
                        _controller.clear();
                        _controller1.clear();
                      }
                    },
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
