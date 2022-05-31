import 'package:flutter_application_11/Calculator/round_button.dart';
import 'package:flutter_application_11/Calculator/calc_functions.dart';
import 'package:flutter_application_11/Calculator/rec_button.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

const kOperationTextStyle = TextStyle(
  fontSize: 30,
  color: Colors.white,
  fontWeight: FontWeight.w400,
);

const kResultTextStyle = TextStyle(
  fontSize: 70,
  color: Colors.white,
  fontWeight: FontWeight.w400,
);

class _CalculatorPageState extends State<CalculatorPage> {
  String result = '0';

  CalculatorFunctions calc = CalculatorFunctions();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 75,
          title: const Text(
            "Kalkulator",
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.w800,
              letterSpacing: 2.0,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22),
              ),
              color: Color(0xFFC62828),
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                          maxHeight: 50,
                        ),
                        child: Text(
                          result,
                          style: kResultTextStyle,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: Text(
                      calc.resultOperationText,
                      style: kOperationTextStyle,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RoundedButton(
                          buttonText: "AC",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("AC");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: "+/-",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("+/-");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: "%",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("%");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: "-",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("-");
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RoundedButton(
                          buttonText: "1",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("1");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: "2",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("2");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: "3",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("3");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: "+",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("+");
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RoundedButton(
                          buttonText: "4",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("4");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: "5",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("5");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: "6",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("6");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: "x",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("x");
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RoundedButton(
                          buttonText: "7",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("7");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: "8",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("8");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: "9",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("9");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: "÷",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("÷");
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RectangularButton(
                          buttonText: "0",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("0");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: ".",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed(".");
                            });
                          },
                        ),
                        RoundedButton(
                          buttonText: "=",
                          onPressed: () {
                            setState(() {
                              result = calc.buttonPressed("=");
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}
