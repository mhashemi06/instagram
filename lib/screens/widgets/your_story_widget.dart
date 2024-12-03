import 'package:flutter/material.dart';

class YourStoryWidget extends StatelessWidget {
  const YourStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 2, color: Colors.white),
          ),
          child: Image.asset(
            'assets/images/icon_plus.png',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Your story',
          style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: 'GM'),
        )
      ],
    );
  }
}
