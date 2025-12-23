import 'package:flutter/material.dart';
import 'secondpage.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Firstpage());
  }
}

class Firstpage extends StatefulWidget {
  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  Color? color1 = Color(0xff1d1d31);
  Color? color2 = Color(0xff1d1d31);
  static int age = 20;
  static int weight = 70;
  static double height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111927),
      appBar: AppBar(
        backgroundColor: Color(0xff111927),
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontSize: 40,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          color1 = Colors.blueAccent;
                          color2 = Color(0xff1d1d31);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: color1,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male, size: 100, color: Colors.white),
                            Text("Male", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          color2 = Colors.pink;
                          color1 = Color(0xff1d1d31);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: color2,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female, size: 100, color: Colors.white),
                            Text(
                              "Female",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff1d1d31),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(
                      color: Color(0xff646478),
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$height",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                          color: Color(0xff646478),
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    min: 100,
                    max: 200,
                    onChanged: (double newvalue) {
                      print(newvalue);
                      setState(() {
                        height = newvalue;
                      });
                    },
                    activeColor: Color(0xffd93559),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff1d1d31),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              color: Color(0xff646478),
                            ),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xff4e4f5e),
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Color(0xff4e4f5e),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff1d1d31),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              color: Color(0xff646478),
                            ),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xff4e4f5e),
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Color(0xff4e4f5e),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              double bmi = weight / ((height / 100) * (height / 100));
              print(bmi);
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              color: Color(0xffd93559),
              child: Text(
                "Calculate",
                style: TextStyle(
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
