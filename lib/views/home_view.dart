import 'package:bmi_calculator/colors.dart';
import 'package:bmi_calculator/views/result_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int Age = 24;
  int Weight = 70;
  int Height = 170;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Scafoldbg,
      appBar: AppBar(
        backgroundColor: AppColors.Scafoldbg,
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            //male and female
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: (isMale)
                                ? AppColors.primary
                                : AppColors.secondry),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 80,
                                color: AppColors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Male',
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: (isMale)
                                ? AppColors.secondry
                                : AppColors.primary),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 80,
                                color: AppColors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Female',
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //height
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.secondry),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            Height.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 3),
                          Text(
                            'cm',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Slider(
                          value: Height.toDouble(),
                          min: 80,
                          max: 220,
                          activeColor: AppColors.primary,
                          inactiveColor: AppColors.accent,
                          onChanged: (value) {
                            setState(() {
                              Height = value.toInt();
                            });
                          })
                    ],
                  ),
                ),
              ),
            ),
            //age and weight
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.secondry),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text('Weight',
                                style: TextStyle(color: Colors.white)),
                            Text(Weight.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                    color: AppColors.white,
                                    style: IconButton.styleFrom(
                                        backgroundColor: AppColors.accent),
                                    onPressed: () {
                                      if (Weight > 30) {
                                        setState(() {
                                          Weight--;
                                        });
                                      }
                                    },
                                    icon: Icon(Icons.remove)),
                                SizedBox(
                                  width: 5,
                                ),
                                IconButton.filled(
                                    color: AppColors.white,
                                    style: IconButton.styleFrom(
                                        backgroundColor: AppColors.accent),
                                    onPressed: () {
                                      setState(() {
                                        Weight++;
                                      });
                                    },
                                    icon: Icon(Icons.add))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.secondry),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text('Age', style: TextStyle(color: Colors.white)),
                            Text(Age.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                    color: AppColors.white,
                                    style: IconButton.styleFrom(
                                        backgroundColor: AppColors.accent),
                                    onPressed: () {
                                      if (Age > 0) {
                                        setState(() {
                                          Age--;
                                        });
                                      }
                                    },
                                    icon: Icon(Icons.remove)),
                                SizedBox(
                                  width: 5,
                                ),
                                IconButton.filled(
                                    color: AppColors.white,
                                    style: IconButton.styleFrom(
                                        backgroundColor: AppColors.accent),
                                    onPressed: () {
                                      setState(() {
                                        Age++;
                                      });
                                    },
                                    icon: Icon(Icons.add))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //calc button
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    double res = (Weight / (Height * Height * .0001));
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ResultView(
                        result: res,
                      );
                    }));
                  },
                  child: Text('Calculate'),
                ))
          ],
        ),
      ),
    );
  }
}
