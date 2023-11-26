import 'package:flutter/material.dart';


class ExperinceContainer extends StatefulWidget {
        double ?width;

   ExperinceContainer({this.width});

  @override
  State<ExperinceContainer> createState() => _CustomTabsState();
}

class _CustomTabsState extends State<ExperinceContainer> {
  var _selected;

  List<Map> _myJson = [
    {"image": "assets/images/Information technology category.png"},
    {"image": "assets/images/Profile.png"},
    {"image": "assets/images/logout.png"},
    {"image": "assets/images/Ilustrator Category.png"},
  ];
  

 

  @override
  Widget build(BuildContext context) {

    return Container(
width: widget.width,
height: 58,
padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 17),
decoration: ShapeDecoration(
shape: RoundedRectangleBorder(
side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
borderRadius: BorderRadius.circular(8),
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