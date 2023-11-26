import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/customContainer/ContainerSearch3.dart';
import 'package:flutter_graduation_app/widgets/customContainer/recentsearch.dart';
import 'package:flutter_graduation_app/widgets/customContainer/search3container.dart';
import 'package:flutter_graduation_app/widgets/customDivider/customDiveder.dart';
import 'package:flutter_graduation_app/widgets/textField/searchTextfield.dart';

class SearchScreen3 extends StatefulWidget {
  const SearchScreen3({super.key});

  @override
  State<SearchScreen3> createState() => _SearchScreen3State();
}

class _SearchScreen3State extends State<SearchScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings),
                  Search3Container(),
                                  Search3Container(),
                  Search3Container(
                    color: Colors.white,
                  ),
        
        
                 
                ],
              ),
              SizedBox(height: 30,),
              RecentSearch(
                text: 'Featuring 120+ jobs',
              ),
              SizedBox(height: 20,),
              ContainerSearch3(
                titletext: 'UI/UX Designer',
                contenttext:'Twitter • Jakarta, Indonesia ' ,
                imageurl: 'assets/images/twitter.png',
                salaryText: '15',
                ontap: () {
                  
                },
              ),
              SizedBox(height: 10,),
             CustomDivider(),
              ContainerSearch3(
                titletext: 'UI/UX Designer',
                contenttext:'Spectrum • Jakarta, Indonesia  ' ,
                imageurl: 'assets/images/twitter.png',
                salaryText: '10',
                ontap: () {
                  
                },
              ),
              SizedBox(height: 10,),
             CustomDivider(),
              ContainerSearch3(
                titletext: 'UI/UX Designer',
                contenttext:'VK • Yogyakarta, Indonesia  ' ,
                imageurl: 'assets/images/twitter.png',
                salaryText: '12',
                ontap: () {
                  
                },
              ),
              SizedBox(height: 10,),
             CustomDivider(),
              ContainerSearch3(
                titletext: 'UI/UX Designer',
                contenttext:'Twitter • Jakarta, Indonesia ' ,
                imageurl: 'assets/images/twitter.png',
                salaryText: '9',
                ontap: () {
                  
                },
              ),
              SizedBox(height: 10,),
             CustomDivider(),
              ContainerSearch3(
                titletext: 'UI/UX Designer',
                contenttext:'Twitter • Jakarta, Indonesia ' ,
                imageurl: 'assets/images/twitter.png',
                salaryText: '12',
                ontap: () {
                  
                },
              ),
              SizedBox(height: 10,),
             CustomDivider()
            ],
          ),
        )
        ),
    );
  }
}