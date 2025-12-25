import 'package:bim_app/widgets/gender_Row.dart';
import 'package:bim_app/widgets/weight_and_age.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = false;
  bool isFemale = false;
  int height = 50;
  int weight = 30;
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: AppBar(
        backgroundColor: Color(0xff24263B),
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 21),
        child: Column(
          children: [
            // gender Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GenderRow(
                  title: "Male",
                  icon: Icons.male,
                  onTap: () {
                    setState(() {
                      isFemale = false;
                      isMale = true;
                    });
                  },
                  color: isMale ? Color(0xff333244) : Color(0xff24263B),
                ),
                SizedBox(width: 10),
                GenderRow(
                  title: "Female",
                  icon: Icons.female,
                  color: isFemale ? Color(0xff333244) : Color(0xff24263B),
                  onTap: () {
                    setState(() {
                      isMale = false;
                      isFemale = true;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 25),
            // height container
            Container(
              width: double.infinity,
              height: 189,
              decoration: BoxDecoration(
                color: Color(0xff333244),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 20, color: Color(0xff8B8C9E)),
                  ),
                  Text.rich(
                    TextSpan(
                      text: height.toString(),
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: " cm",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    min: 50,
                    max: 250,
                    activeColor: Color(0xffE83D67),
                    value: height.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 29),
            // weight and age
            Row(
              children: [
                WeightAndAge(
                  title: "Weight",
                  numper: weight,
                  increaseOnTap: () {
                    setState(() {
                      weight++;
                    });
                  },
                  decreaseOnTap: () {
                    if (weight > 30) {
                      setState(() {
                        weight--;
                      });
                    }
                  },
                ),
                SizedBox(width: 9),
                WeightAndAge(
                  title: "Age",
                  numper: age,
                  increaseOnTap: () {
                    setState(() {
                      age++;
                    });
                  },
                  decreaseOnTap: () {
                    if (age > 10) {
                      setState(() {
                        age--;
                      });
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      // calculate button
      bottomNavigationBar: Container(
        width: 200,
        height: 80,
        color: Color(0xffE83D67),
        child: Center(
          child: Text(
            "Calculate",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
