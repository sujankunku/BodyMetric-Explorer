import 'package:bmi_finder/resultsbrain.dart';
import 'package:bmi_finder/resultspage.dart';
import 'package:flutter/material.dart';

const CardColor = Colors.white12;
const cardColor2 = Color.fromRGBO(182, 192, 148, 1);
// Color maleColor = const Color.fromRGBO(10, 30, 34, 1);
// Color femaleColor = const Color.fromRGBO(10, 30, 34, 1);

enum GenderType {
  male,
  female,
  none,
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GenderType SelectedGender = GenderType.none;
  int Height = 180;
  int Weight = 60;
  int Age = 20;
  // void updateColor(GenderType selectedGender) {
  //   if (selectedGender == GenderType.male) {
  //     if (maleColor == CardColor) {
  //       maleColor = cardColor2;
  //       femaleColor = CardColor;
  //     } else {
  //       maleColor = CardColor;
  //     }
  //   }
  //   if (selectedGender == GenderType.female) {
  //     if (femaleColor == CardColor) {
  //       femaleColor = cardColor2;
  //       maleColor = CardColor;
  //     } else {
  //       femaleColor = CardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromRGBO(5, 25, 25, 1),
      appBar: AppBar(
        //backgroundColor: const Color.fromRGBO(5, 25, 25, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        title: const Text(
          "BMI FINDER",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedGender = GenderType.male;
                    });
                  },
                  child: ReusableCard(
                    colour: SelectedGender == GenderType.male
                        ? cardColor2
                        : CardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male_rounded,
                          color: Colors.pink[500],
                          size: 90,
                        ),
                        Text(
                          "MALE",
                          style: TextStyle(
                              color: Colors.pink[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedGender = GenderType.female;
                    });
                  },
                  child: ReusableCard(
                    colour: SelectedGender == GenderType.female
                        ? cardColor2
                        : CardColor,
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female_outlined,
                            size: 90,
                            color: Colors.pink[500],
                          ),
                          Text(
                            "FEMALE",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.pink[500],
                                fontSize: 18),
                          )
                        ]),
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: CardColor,
              cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.pink[500],
                          fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          Height.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink[500],
                              fontSize: 30),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink[500],
                              fontSize: 18),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          overlayColor: Colors.pink[400],
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 13),
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 30)),
                      child: Slider(
                          value: Height.toDouble(),
                          min: 120,
                          max: 220,
                          activeColor: Colors.white60,
                          inactiveColor: Colors.blueGrey[700],
                          thumbColor: Colors.pink[500],
                          onChanged: (double newValue) {
                            setState(() {
                              Height = newValue.round();
                            });
                          }),
                    )
                  ]),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: CardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.pink[500],
                            fontSize: 18),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            Weight.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.pink[500],
                                fontSize: 40),
                          ),
                          Text(
                            "kg",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.pink[500],
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: Icons.remove,
                            onPressed: () {
                              setState(() {
                                Weight--;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            icon: Icons.add,
                            onPressed: () {
                              setState(() {
                                Weight++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  colour: CardColor,
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink[500],
                              fontSize: 18),
                        ),
                        Text(
                          Age.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink[500],
                              fontSize: 40),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: Icons.remove,
                                onPressed: () {
                                  setState(() {
                                    Age--;
                                  });
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                                icon: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    Age++;
                                  });
                                })
                          ],
                        ),
                      ]),
                )),
              ],
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
                ResultsBrain obj = ResultsBrain(height: Height, weight: Weight);
                obj.BmiCalculator();
                //Navigator.pushNamed(context, "/first");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ResultsPage(
                        BmiResult: obj.BmiCalculator(),
                        ResultText: obj.ResultText(),
                        ResultText2: obj.ResultText2(),
                      );
                    },
                  ),
                );
              },
              child: const Center(
                child: Text(
                  "CALCULATE",
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

class ReusableCard extends StatefulWidget {
  const ReusableCard(
      {super.key, required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  State<ReusableCard> createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  // ReusableCard({
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: widget.colour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: widget.cardChild,
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPressed(),
      textStyle: const TextStyle(color: Colors.white),
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(width: 45, height: 45),
      fillColor: const Color.fromARGB(255, 87, 102, 109),
      child: Icon(icon),
    );
  }
}
