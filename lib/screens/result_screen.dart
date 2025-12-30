// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bim_app/widgets/custom_appbar.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  ResultScreen({
    Key? key,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Text("Your Result ",style: TextStyle(
            color: Colors.white, 
            fontSize: 30,
            fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 400,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xff24263B),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(getResultText(),style: TextStyle(
                  color: Colors.green,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20),
                Text(result.toStringAsFixed(1),style: TextStyle(
                  color: Colors.white,
                  fontSize: 100,
                  fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(statusBody,textAlign: TextAlign.center,style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
    String statusBody="";
  String getResultText() {
    if (result < 18.5) {
      statusBody = "وزنك أقل من الطبيعي. يمكنك تناول المزيد من الطعام";
      return "Underweight";
    } else if (result >= 18.5 && result < 24.9) {
      statusBody = "وزنك طبيعي. أحسنت العمل!";
      return "Normal";
    } else if (result >= 25 && result < 29.9) {
      statusBody = "وزنك أعلى من الطبيعي. يجب أن تفكر في نظام غذائي صحي.";
      return "Overweight";
    } else {
      statusBody = "وزنك يشير إلى السمنة. من الأفضل استشارة أخصائي تغذية.";
      return "Obese";
    }
  }
}

