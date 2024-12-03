import 'package:flutter/material.dart';
import 'package:instagram_app/constant/constant.dart';

class ActivityScreenScreen extends StatefulWidget {
  const ActivityScreenScreen({super.key});

  @override
  State<ActivityScreenScreen> createState() => _ActivityScreenScreenState();
}

class _ActivityScreenScreenState extends State<ActivityScreenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Center(
          child: Text('Activity Screen'),
        ),
      ),
    );
  }
}
