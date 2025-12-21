import 'package:flutter/material.dart';
import 'package:task5_r35_13/welcome/welcome.dart';

class Container1 extends StatefulWidget {
  Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  bool isMaleSelcted = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: genderContainer(
              genderIcon: Icon(Icons.male, size: 70, color: Colors.white),
              genderText: Text('Male', style: TextStyle(color: Colors.grey)),
              isSelcted: isMaleSelcted,
              ontab: () {
                setState(() {
                  isMaleSelcted = true;
                });
              },
            ),
          ),
          Expanded(
            child: genderContainer(
              genderIcon: Icon(Icons.female, size: 70, color: Colors.white),
              genderText: Text('Female', style: TextStyle(color: Colors.grey)),
              isSelcted: !isMaleSelcted,
              ontab: () {
                setState(() {
                  isMaleSelcted = false;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class genderContainer extends StatelessWidget {
  genderContainer({
    super.key,
    required this.genderText,
    required this.genderIcon,
    required this.isSelcted,
    required this.ontab,
  });
  final Text genderText;
  final Icon genderIcon;

  Color color = Color(0xff121327);

  final bool isSelcted;

  final VoidCallback ontab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontab,
      child: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [genderIcon, genderText],
        ),
        decoration: BoxDecoration(
          color: isSelcted ? Colors.blue : color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
