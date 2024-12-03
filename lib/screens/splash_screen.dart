import 'package:flutter/material.dart';
import 'package:instagram_app/constant/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: blackColor,
        image: DecorationImage(
            image: AssetImage(
              'assets/images/pattern.png',
            ),
            opacity: 0.01,
            repeat: ImageRepeat.repeatY),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 155.0,
                height: 77.0,
                child: Image.asset('assets/images/logo_splash.png'),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Column(
                  children: [
                    Text(
                      'From',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: 12,
                          fontFamily: 'GB'
                      ),
                    ),
                    Text(
                      'Mehnush hashemi',
                      style: TextStyle(
                        color: lightBlueColor,
                        fontSize: 12,
                        fontFamily: 'GB'
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
