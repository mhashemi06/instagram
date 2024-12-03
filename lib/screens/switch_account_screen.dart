import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_app/constant/constant.dart';

class SwitchAccountScreen extends StatefulWidget {
  const SwitchAccountScreen({super.key});

  @override
  State<SwitchAccountScreen> createState() => _SwitchAccountScreenState();
}

class _SwitchAccountScreenState extends State<SwitchAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/switch_account_background.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 240),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          width: 340,
                          height: 352,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromRGBO(255, 255, 255, 0.5),
                                    Color.fromRGBO(255, 255, 255, 0.2),
                                  ]),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/profile.png',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 20,
                                ),
                                child: Text('Mehnush Hashemi'),
                              ),
                              SizedBox(
                                  width: 129,
                                  height: 46,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Confirm',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    style: Theme.of(context)
                                        .elevatedButtonTheme
                                        .style,
                                  )),
                              SizedBox(
                                height: 30,
                              ),
                              // Text('switch account'),
                              Text('switch account'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 120,),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? /',
                    style: TextStyle(color:greyColor,fontSize: 16,fontFamily: 'GB'),
                  ),
                  Text(
                    ' Sign up',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
