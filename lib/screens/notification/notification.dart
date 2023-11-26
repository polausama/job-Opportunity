import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/customContainer/notification/ContainerNotification.dart';
import 'package:flutter_graduation_app/widgets/customContainer/notification/contianerNotification2.dart';
import 'package:flutter_graduation_app/widgets/customContainer/recentsearch.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class NotofocationScreen extends StatefulWidget {
  const NotofocationScreen({super.key});

  @override
  State<NotofocationScreen> createState() => _NotofocationScreenState();
}

class _NotofocationScreenState extends State<NotofocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child:
         SingleChildScrollView(
           child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/arrow-left.png'),
                  MyText(
                    text: 'Notification',
                    fontsize: 20,
                    color: Color(0xFF111827),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              RecentSearch(
                text: 'New',
              ),
              SizedBox(
                height: 40,
              ),
              NotificationContainer(
                text: 'Dana ',
                sentence: 'Posted new design jobs',
                imageurl: 'assets/images/Dana Logo.png',
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              NotificationContainer(
                text: 'Dana ',
                sentence: 'Posted new design jobs',
                imageurl: 'assets/images/Dana Logo.png',
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              NotificationContainer(
                text: 'Dana ',
                sentence: 'Posted new design jobs',
                imageurl: 'assets/images/Dana Logo.png',
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              NotificationContainer(
                text: 'Dana ',
                sentence: 'Posted new design jobs',
                imageurl: 'assets/images/Dana Logo.png',
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(height: 40,),
              RecentSearch(
                text: 'Yesterday',
              ),
              SizedBox(height: 40,),
              NotificationContainer_two(
                text: 'Email setup successful ',
                sentence: 'Your email setup was successful with the following ',
                imageurl: 'assets/images/sms.png',
                sentence2: 'details: Your new email is rafifdianganz@gmail.com',
               
              ),
              SizedBox(height: 20,),
              Divider(thickness: 2,),
              SizedBox(height: 20,),
                NotificationContainer_two(
                text: 'Welcome to Jobsque ',
                sentence: 'Hello Rafif Dian Axelingga, thank you for registering  ',
                imageurl: 'assets/images/search-status.png',
                sentence2: 'Jobsque. Enjoy the various features that...',
               
              ),
              SizedBox(height: 20,),
              Divider(thickness: 2,),
         
            ],
                 ),
         ),
      )),
    );
  }
}
