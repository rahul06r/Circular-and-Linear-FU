import 'package:flutter/material.dart';
import 'package:myapp2/constant.dart';
// import 'package:myapp2/widgets/skills_page.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgcolor,
      child: Expanded(
        child: SingleChildScrollView(
          // controller: controller,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Text(
                "Demonstration of Circular and Linaer progress bar with and without Packages",
                style: TextStyle(fontSize: 40, color: whiteColor),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "This is done with Normal circular Progress Indicator which comes with Inbulit and Animations",
                          style: TextStyle(color: whiteColor),
                        ),
                        SizedBox(height: 30),
                        Container(
                          height: 300,
                          width: 300,
                          child: TweenAnimationBuilder(
                            tween: Tween<double>(begin: 0, end: .82),
                            duration: durationAnime,
                            builder: (context, double value, child) => Stack(
                              fit: StackFit.expand,
                              children: [
                                CircularProgressIndicator(
                                  value: value,
                                  backgroundColor: secondaryColor,
                                  strokeWidth: strokewidth,
                                  color: primaryColor,
                                ),
                                Center(
                                  child: Text(
                                    (value * 100).toInt().toString() + "%",
                                    style: TextStyle(color: whiteColor),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "This is done with  circular Progress Indicator which comes with Packages from PUB",
                          style: TextStyle(color: whiteColor),
                        ),
                        SizedBox(height: 30),
                        CircularPercentIndicator(
                         
                          radius: 300,
                          animation: true,
                          animationDuration: 10000,
                     
                          center: Text(
                            "80%",
                            style: TextStyle(color: whiteColor),
                          ),
                          lineWidth: 13.0,
                          circularStrokeCap: CircularStrokeCap.round,
                          backgroundColor: secondaryColor,
                          progressColor: primaryColor,
                          percent: .8,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "This is done with Normal Linaer Progress Indicator which comes with Inbulit and Animations",
                        style: TextStyle(color: whiteColor),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 200,
                        // height: 100,
                        child: TweenAnimationBuilder(
                          tween: Tween<double>(begin: 0, end: .8),
                          duration: durationAnime,
                          builder: (context, double value, child) => Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "linaertextlabel",
                                    style: TextStyle(
                                        color: whiteColor, fontSize: 13),
                                  ),
                                  Text(
                                    (value * 100).toInt().toString() + "%",
                                    style: TextStyle(
                                        color: whiteColor, fontSize: 13),
                                  )
                                ],
                              ),
                              SizedBox(height: 5),
                              LinearProgressIndicator(
                                value: value,
                                backgroundColor: secondaryColor,
                                color: primaryColor,
                                minHeight: 5.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "This is done with  Linaer Progress Indicator which comes with Packages from PUB",
                        style: TextStyle(color: whiteColor),
                      ),
                      SizedBox(height: 20),
                      LinearPercentIndicator(
                        // padding: EdgeInsets.all(8.0),
                        width: 300,
                        lineHeight: 10,
                        animation: true,
                        animationDuration: 12000,
                        backgroundColor: secondaryColor,
                        leading: Text(
                          "Dart",
                          style: TextStyle(color: whiteColor),
                        ),
                        percent: .8,
                        progressColor: primaryColor,
                        trailing: Text(
                          "80%",
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
