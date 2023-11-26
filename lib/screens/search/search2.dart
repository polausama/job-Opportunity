import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/customContainer/listviewcontainer.dart';
import 'package:flutter_graduation_app/widgets/customContainer/recentsearch.dart';
import 'package:flutter_graduation_app/widgets/textField/searchTextfield.dart';

class SearchTwoScreen extends StatefulWidget {
  String? names;
  SearchTwoScreen({super.key, this.names});

  @override
  State<SearchTwoScreen> createState() => _SearchTwoScreenState();
}

class _SearchTwoScreenState extends State<SearchTwoScreen> {
  List <String> list = ['Junior UI Designer','Junior UX Designer','Product Designer','Project Manager','UI/UX Designer','Front-End Developer'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                Image.asset('assets/images/arrow-left.png'),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: SearchTextField(
                  hinttext: 'Type something...',
                  onchange: (p0) {},
                  ontap: () {},
                )
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RecentSearch(
            text: 'Recent searches',
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 2,
              child: ListView.separated(
            itemCount: list.length,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20,
              );
            },
            itemBuilder: (context, index) {
              
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListViewContainer(
                  icon:Icons.watch_later_outlined,
                  icon2: Icons.cancel_outlined,
              text: list[index],
                ),
              );  
            },
          )
          ),
          RecentSearch(
            text: 'Popular searches',
          ),
          SizedBox(height: 40,),
          Expanded(
            flex: 2,
            child:ListView.separated(
            itemCount: list.length,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20,
              );
            },
            itemBuilder: (context, index) {
              
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListViewContainer(
                  icon:Icons.search_off_outlined,
                  icon2: Icons.arrow_right_alt_outlined,
              text: list[index],
                ),
              );  
            },
          ) )
        ],
      )
      ),
    );
  }
}
