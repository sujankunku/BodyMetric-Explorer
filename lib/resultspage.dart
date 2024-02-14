import 'package:bmi_finder/inputpage.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String BmiResult;
  final String ResultText;
  final String ResultText2;

  const ResultsPage(
      {super.key,
      required this.BmiResult,
      required this.ResultText,
      required this.ResultText2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(5, 25, 25, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(5, 25, 25, 1),
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Center(
              child: Container(
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "YOUR RESULT",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: const Color.fromRGBO(10, 30, 34, 1),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    ResultText,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    BmiResult,
                    style: const TextStyle(
                        fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ResultText2,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Container(
            //color: Colors.pink[500],
            height: 80,
            width: double.maxFinite,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.pink[500],
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextButton(
              onPressed: () {
                //Navigator.pushNamed(context, "/initial");
                Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return const ResultsPage();
                //     },
                //   ),
                // );
              },
              child: const Center(
                child: Text(
                  "RE-CALCULATE",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
