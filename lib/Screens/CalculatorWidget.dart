import 'package:flutter/material.dart';

import '../Widgets/Buttons.dart';

class CalculatorWidget extends StatefulWidget {
  const CalculatorWidget({Key? key}) : super(key: key);

  @override
  State<CalculatorWidget> createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  String firstNb = '';

  double result = 0;

  String operator = '';

  String secondNb = '';
  String finalResult = '';

  @override
  Widget build(BuildContext context) {
    var txt = TextEditingController();
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: TextField(
                controller: txt,
                cursorHeight: 50,
                autofocus: true,
                readOnly: true,
                textDirection: TextDirection.ltr,
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
                          function: () {
                            calculator("C");
                            clear();
                            txt.text = "";
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "( )",
                          textColor: Colors.lightGreen,
                          function: () {}),
                      Buttons(
                          color: Colors.black54,
                          content: "%",
                          textColor: Colors.lightGreen,
                          function: () {
                            operator = "%";
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "÷",
                          textColor: Colors.lightGreen,
                          function: () {
                            operator ="÷";
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "7",
                          textColor: Colors.white,
                          function: () {
                            calculator("7");
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "8",
                          textColor: Colors.white,
                          function: () {
                            calculator("8");
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "9",
                          textColor: Colors.white,
                          function: () {
                            calculator("9");
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "×",
                          textColor: Colors.lightGreen,
                          function: () {
                            operator = "×";
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "4",
                          textColor: Colors.white,
                          function: () {
                            calculator("4");
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "5",
                          textColor: Colors.white,
                          function: () {
                            calculator("5");
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "6",
                          textColor: Colors.white,
                          function: () {
                            calculator("6");
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "–",
                          textColor: Colors.lightGreen,
                          function: () {
                            operator = "–";
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "1",
                          textColor: Colors.white,
                          function: () {
                            calculator("1");
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "2",
                          textColor: Colors.white,
                          function: () {
                            calculator("2");
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "3",
                          textColor: Colors.white,
                          function: () {
                            calculator("3");
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "+",
                          textColor: Colors.lightGreen,
                          function: () {
                            operator = "+";
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "+/-",
                          textColor: Colors.white,
                          function: () {
                            operator = "+/-";
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: "0",
                          textColor: Colors.white,
                          function: () {
                            calculator('0');
                          }),
                      Buttons(
                          color: Colors.black54,
                          content: ".",
                          textColor: Colors.white,
                          function: () {
                            calculator('.');
                          }),
                      Buttons(
                          color: Colors.lightGreen,
                          content: "=",
                          textColor: Colors.white,
                          function: () {
                            switch (operator) {
                              case "+":
                                finalResult = add();
                                operator = '';
                                print("final result is : " + finalResult);
                                break;
                              case "×":
                                finalResult = mul();
                                operator = '';
                                print("final result is : " + finalResult);
                                break;
                              case "–":
                                finalResult = sub();
                                operator = '';
                                print("final result is : " + finalResult);
                                break;
                              case "÷":
                                finalResult = div();
                                operator = '';
                                print("final result is : " + finalResult);
                                break;
                              case "%":
                                finalResult = modulo();
                                operator = '';
                                print("final result is : "+ finalResult);
                                break;
                              default:
                                finalResult = firstNb;
                                secondNb = '';
                                print("final result is : " + finalResult);

                            }
                            txt.text = finalResult;
                          }),
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

  void calculator(String value) {
    if (value.contains(new RegExp(r'[0-9]'))) {
      if (firstNb == '') {
        firstNb = value;
      } else {
        secondNb = value;
      }
      print('first nb' + firstNb);
      print('second nb' + secondNb);
    }
  }

  String add() {
    result = double.parse(firstNb) + double.parse(secondNb);
    firstNb = result.toString();
    return firstNb;
  }

  String mul() {
    result = double.parse(firstNb) * double.parse(secondNb);
    firstNb = result.toString();
    return firstNb;
  }

  String div() {
    result = double.parse(firstNb) / double.parse(secondNb);
    firstNb = result.toString();
    return firstNb;
  }

  String sub() {
    result = double.parse(firstNb) - double.parse(secondNb);
    firstNb = result.toString();
    return firstNb;
  }
  String modulo(){
    result = double.parse(firstNb) % double.parse(secondNb);
    firstNb = result.toString();
    return firstNb;
  }
  void clear() {
    firstNb = '';
    result = 0;
    operator = '';
    secondNb = '';
    finalResult = '';
  }

}
