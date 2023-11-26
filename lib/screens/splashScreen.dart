import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(bottom: 30, top: 30),
      decoration: const BoxDecoration(
          color: Color.fromRGBO(244, 249, 255, 5),
          borderRadius: BorderRadius.all(Radius.circular(145))),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: -70,
            right: -70,
            child: CircleAvatar(
              radius: 50 * 5,
              backgroundColor: const Color.fromRGBO(241, 245, 255, 5),
              child: CircleAvatar(
                radius: 40 * 5,
                backgroundColor: const Color.fromRGBO(232, 239, 255, 5),
                child: CircleAvatar(
                    radius: 20 * 5,
                    backgroundColor: const Color(0x4CD6E4FF),
                    child: Image.asset(
                        "assets/images/Logo(1).png")),
              ),
            ),
          ),
        ],
      ),
    )
    );
  }
}