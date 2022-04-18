import 'package:flutter/material.dart';

import '../Widgets/Buttons.dart';

class CalculatorWidget extends StatelessWidget {
  const CalculatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: TextField(
                cursorHeight: 50,
                autofocus: true,
                readOnly: true,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 50),
                showCursor: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 90,
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.all(10),
                    sliver: SliverGrid.count(crossAxisCount: 4, children: [
                      Buttons(
                          color: Colors.black54,
                          content: "C",
                          textColor: Colors.redAccent,
                      function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "( )",
                          textColor: Colors.lightGreen,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "%",
                          textColor: Colors.lightGreen,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "÷",
                          textColor: Colors.lightGreen,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "7",
                          textColor: Colors.white,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "8",
                          textColor: Colors.white,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "9",
                          textColor: Colors.white,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "×",
                          textColor: Colors.lightGreen,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "4",
                          textColor: Colors.white,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "5",
                          textColor: Colors.white,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "6",
                          textColor: Colors.white,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "–",
                          textColor: Colors.lightGreen,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "1",
                          textColor: Colors.white,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "2",
                          textColor: Colors.white,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "3",
                          textColor: Colors.white,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "+",
                          textColor: Colors.lightGreen,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "+/-",
                          textColor: Colors.white,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: "0",
                          textColor: Colors.white,
                          function: (){}),
                      Buttons(
                          color: Colors.black54,
                          content: ".",
                          textColor: Colors.white,
                          function: (){}),
                      Buttons(
                          color: Colors.lightGreen,
                          content: "=",
                          textColor: Colors.white,
                          function: (){}),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
