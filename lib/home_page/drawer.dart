import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SafeArea(
          child: Material(
            elevation: 05.0,
            child: InkWell(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: const [
                    //the Menu text
                    Expanded(
                        child: Text(
                      "Menu",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
