import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/screens/search/search2.dart';
import 'package:flutter_graduation_app/widgets/textField/searchTextfield.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> strings = ['pola','ahmed','mark'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/arrow-left.png'),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: SearchTextField(
                  hinttext: 'type something',
                  onchange: (p0) {
                    //List filter = strings.where((element) => element.contains(p0)).toList();
                   // print(filter);
                  },
                  ontap: () {},
                ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
              decoration: ShapeDecoration(
                color: Color(0xFFF4F4F5),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFE5E7EB)),
                ),
              ),
              child: Text(
                'Recent searches',
                style: TextStyle(
                  color: Color(0xFF6B7280),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  height: 0.10,
                  letterSpacing: 0.14,
                ),
              ),
              
              
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(height: 30,);
                },
                itemCount: strings.length,
                itemBuilder:(context, index) {
                  return 
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchTwoScreen(names:strings[index])));
                    },
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                              Icon(Icons.watch_later),
                              Text(strings[index]),
                              Icon(Icons.cancel)
                      ],
                    ),
                  );
                }, 
            ),
            )
          ],
        ),
      )),
    );
  }
}
