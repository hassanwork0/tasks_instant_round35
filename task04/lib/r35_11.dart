import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  Color maleColor = Color(0xFF1D1E33);
  Color femaleColor = Color(0xFF1D1E33);

  double height = 177;
  int weight = 70;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),

      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),

      body: Column(
        children: [


          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      maleColor = Colors.blue;
                      femaleColor = Color(0xFF1D1E33);
                    });
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: maleColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male, size: 50, color: Colors.white),
                        SizedBox(height: 10),
                        Text("Male", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      femaleColor = Colors.pink;
                      maleColor = Color(0xFF1D1E33);
                    });
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: femaleColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.female, size: 30, color: Colors.white),
                        SizedBox(height: 10),
                        Text("Female", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),


          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Height", style: TextStyle(color: Colors.grey)),
                  Text(
                    height.round().toString(),
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Slider(
                    value: height,
                    min: 100,
                    max: 200,
                    activeColor: Colors.red,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),


          Row(
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Weight", style: TextStyle(color: Colors.grey)),
                      Text(
                        weight.toString(),
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove, color: Colors.white),
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.add, color: Colors.white),
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  height: 150,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Age", style: TextStyle(color: Colors.grey)),
                      Text(
                        age.toString(),
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove, color: Colors.white),
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.add, color: Colors.white),
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.red,
            child: Center(
              child: Text(
                "Calculate",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



