import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content(
      {super.key,
      required this.image,
      required this.title,
      required this.colorText,
      required this.backColor});
  final String image;
  final String title;
  final Color colorText;
  final Color backColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: backColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: TextStyle(
                    color: colorText,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
