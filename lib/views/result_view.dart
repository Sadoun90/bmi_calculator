import 'dart:ffi';

import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  ResultView({super.key, required this.result});
  final double result;
  Color? color;

  String Getclass() {
    if (result <= 18.5) {
      color = Colors.red;
      return 'Underweight';
    } else if (result <= 24.5) {
      color = Colors.green;
      return 'Normal';
    } else if (result >= 39.9) {
      color = Colors.yellow;
      return 'Overweight';
    } else {
      color = Colors.red;
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.Scafoldbg,
        appBar: AppBar(
          backgroundColor: AppColors.Scafoldbg,
          foregroundColor: AppColors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
          centerTitle: true,
          title: Text(
            'RESULT',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Your Result',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 160,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.accent),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Getclass(),
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          result.toStringAsFixed(2),
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              )
              //// Recalac button
              ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: AppColors.primary,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Recalculate'),
                    )),
              )
            ],
          ),
        ));
  }
}
