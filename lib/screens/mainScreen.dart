import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/bottomnavigationScreen/applied.dart';
import 'package:flutter_graduation_app/widgets/bottomnavigationScreen/home.dart';
import 'package:flutter_graduation_app/widgets/bottomnavigationScreen/messages.dart';
import 'package:flutter_graduation_app/widgets/bottomnavigationScreen/profile.dart';
import 'package:flutter_graduation_app/widgets/bottomnavigationScreen/saved/saved.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainScreen> {
   int currentindex = 0;
    List<Widget> widgetoption = <Widget>[
      HomeScreen(),
      MessagesScreen(),
      AppliedScreen(),
      SavedScreen(),
      ProfileScreen()
    ];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'Messages'),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_sharp),
              label: 'Applied',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.save_sharp), label: 'Saved'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_sharp), label: 'Profile'),
          ],
          onTap: (value) {
            print(value);
           setState(() {
                        currentindex = value;

            });

          },
          currentIndex: currentindex,
        ),
        body: 
        SafeArea(child: widgetoption.elementAt(currentindex)));
  }
}
