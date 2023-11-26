import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/jobdetail/jobdetailContainer.dart';
import 'package:flutter_graduation_app/widgets/customContainer/jobdetail/jobdetailcontainer2.dart';
import 'package:flutter_graduation_app/widgets/customContainer/jobdetail/jobdetailcontainer3.dart';
import 'package:flutter_graduation_app/widgets/customContainer/jobdetail/profileContainer.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:toggle_switch/toggle_switch.dart';

class JobDetailScreen_three extends StatefulWidget {
  const JobDetailScreen_three({super.key});

  @override
  State<JobDetailScreen_three> createState() => _JobDetailScreen_twoState();
}

class _JobDetailScreen_twoState extends State<JobDetailScreen_three> {
  @override
  Widget build(BuildContext context) {
    return 
    SingleChildScrollView(
      child: Column(
        
        children: [
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: '6 Employees For',
                  color: Colors.black,
                  fontsize: 14,
                ),
                JobDetailContainer_three()
              ],
            ),
            SizedBox(
              height: 15,
            ),
            MySentence(
              text: 'UI/UX Design',
            ),
            SizedBox(height: 60,),
    jobDetailProfileContainer(
      imageurl:'assets/images/Dimas Profile.png' ,
      text: 'Dimas Adi Saputro',
      sentence:'Senior UI/UX Designer at Twitter' ,
      sentence2: 'Work during',
      yeartext:'5 Years' ,
    ),         
            SizedBox(height: 20,),
            Divider(
              thickness: 2,
            ),
            SizedBox(height: 20,),
            jobDetailProfileContainer(
      imageurl:'assets/images/Dimas Profile.png' ,
      text: 'Dimas Adi Saputro',
      sentence:'Senior UI/UX Designer at Twitter' ,
      sentence2: 'Work during',
      yeartext:'5 Years' ,
    ),         
            SizedBox(height: 20,),
            Divider(
              thickness: 2,
            ),
                      SizedBox(height: 20,),
    
            jobDetailProfileContainer(
      imageurl:'assets/images/Dimas Profile.png' ,
      text: 'Dimas Adi Saputro',
      sentence:'Senior UI/UX Designer at Twitter' ,
      sentence2: 'Work during',
      yeartext:'5 Years' ,
    ),         
            SizedBox(height: 20,),
            Divider(
              thickness: 2,
            ),
            
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Center(
              child: RoundedButton(
                text: 'Apply now',
                ontap: () {},
              ),
            )
        ],
      ),
    );
  }
}
