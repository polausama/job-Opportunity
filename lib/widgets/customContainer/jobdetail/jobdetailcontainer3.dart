import 'package:flutter/material.dart';

class JobDetailContainer_three extends StatefulWidget {
  const JobDetailContainer_three({super.key});

  @override
  State<JobDetailContainer_three> createState() => _JobDetailContainer_threeState();
}

class _JobDetailContainer_threeState extends State<JobDetailContainer_three> {
  @override
   var _selected;

  List<Map> _myJson = [
    {"image": "assets/images/Information technology category.png"},
    {"image": "assets/images/Profile.png"},
    {"image": "assets/images/logout.png"},
    {"image": "assets/images/Ilustrator Category.png"},
  ];
  Widget build(BuildContext context) {
    return Container(
width: 137,
height: 38,
padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
decoration: ShapeDecoration(
shape: RoundedRectangleBorder(
side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
borderRadius: BorderRadius.circular(100),
),
), 
child:  DropdownButtonHideUnderline(
                child: DropdownButton(
                 hint: Image.asset("assets/images/Ilustrator Category.png"),
                  items: _myJson.map((e) => DropdownMenuItem(child: Image.asset(e['image']),value: e,)).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selected = value;
                    });
                  },
                  value: _selected,
                ),
              ), 
              );
  }
}