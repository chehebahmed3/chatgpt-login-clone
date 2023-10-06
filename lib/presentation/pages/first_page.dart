import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:gpt_first_page/presentation/widgets/content.dart';
import 'package:gpt_first_page/presentation/widgets/log%20_in.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<String> itemsString = [
    'Let\'s design',
    'ChatGpt',
    'Let\'s chit-chat',
    'Let\'s go',
    'Let\'s invent',
    'Let\'s discover',
    'Let\'s brainstorm',
    'Let\'s create',
    'Let\'s explore',
  ];
  List<Color> itemsColor = [
    const Color.fromARGB(255, 0, 54, 98),
    const Color.fromARGB(255, 103, 50, 30),
    const Color.fromARGB(255, 69, 21, 18),
    Colors.white,
    const Color.fromARGB(255, 29, 93, 31),
    const Color.fromARGB(255, 92, 38, 18),
    const Color.fromARGB(255, 52, 248, 209)
  ];
  List<Color> itemsColor2 = [
    const Color.fromARGB(255, 180, 45, 0),
    Colors.red,
    Colors.black,
    Colors.grey,
    const Color.fromARGB(255, 1, 42, 11),
    const Color.fromARGB(255, 25, 0, 255),
    const Color.fromARGB(255, 225, 74, 137),
    const Color.fromARGB(255, 15, 6, 6),
  ];

  Color textColor = Colors.red;
  Color backColor = Colors.black;

  Color getRandomColor(List<Color> itemsColor) {
    final Random random = Random();
    final int randomIndex = random.nextInt(itemsColor.length);
    return itemsColor[randomIndex];
  }

  Color getRandomColor2(List<Color> itemsColor2) {
    final Random random = Random();
    final int randomIndex2 = random.nextInt(itemsColor2.length);
    return itemsColor2[randomIndex2];
  }

  void changeColor() {
    setState(() {
      textColor = getRandomColor(itemsColor);
      backColor = getRandomColor2(itemsColor2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //the top part
          Container(
            decoration: BoxDecoration(
              color: backColor,
            ),
            child: Align(
              alignment: const Alignment(0, -0.33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: DefaultTextStyle(
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: textColor),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            itemsString[0],
                            speed: const Duration(milliseconds: 50),
                          ),
                          TyperAnimatedText(
                            itemsString[1],
                            speed: const Duration(milliseconds: 50),
                          ),
                          TyperAnimatedText(
                            itemsString[2],
                            speed: const Duration(milliseconds: 50),
                          ),
                          TyperAnimatedText(
                            itemsString[3],
                            speed: const Duration(milliseconds: 50),
                          ),
                          TyperAnimatedText(
                            itemsString[4],
                            speed: const Duration(milliseconds: 50),
                          ),
                          TyperAnimatedText(
                            itemsString[5],
                            speed: const Duration(milliseconds: 50),
                          ),
                          TyperAnimatedText(
                            itemsString[6],
                            speed: const Duration(milliseconds: 50),
                          ),
                          TyperAnimatedText(
                            itemsString[7],
                            speed: const Duration(milliseconds: 50),
                          ),
                          TyperAnimatedText(
                            itemsString[8],
                            speed: const Duration(milliseconds: 50),
                          ),
                        ],
                        onNext: (p0, p9) => changeColor(),
                        //pause: const Duration(seconds: 1),
                        repeatForever: true,
                        pause: const Duration(seconds: 1),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.circle_rounded,
                    color: textColor,
                    size: 35,
                  ),
                ],
              ),
            ),
          ),
          //the bottom part
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 260,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: const Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Content(
                    image: 'assets/images/google.png',
                    title: 'Continue with Google',
                    colorText: Colors.white,
                    backColor: Colors.black,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Content(
                    image: 'assets/images/apple.png',
                    title: 'Continue with Apple',
                    colorText: Colors.black,
                    backColor: Color.fromARGB(255, 238, 233, 233),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Content(
                    image: 'assets/images/email.png',
                    title: 'Sign up with email',
                    colorText: Colors.black,
                    backColor: Color.fromARGB(255, 238, 233, 233),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LogIn()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
