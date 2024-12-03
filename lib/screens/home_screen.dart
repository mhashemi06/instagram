import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_app/constant/constant.dart';
import 'package:instagram_app/screens/widgets/bottom_sheet_widget.dart';
import 'package:instagram_app/screens/widgets/user_info_widget.dart';
import 'package:instagram_app/screens/widgets/your_story_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        appBar: _getAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: SizedBox(
                  height: 90,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 20,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return index == 0 ? YourStoryWidget() : _getContentStory();
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return _getPosts();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleSpacing: 17,
      title: SizedBox(
        width: 128,
        height: 20,
        child: Image.asset(
          'assets/images/moodinger_logo.png',
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 17),
          child: Image.asset('assets/images/icon_direct.png'),
        )
      ],
    );
  }


  Widget _getContentStory() {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 2, color: pinkColor),
          ),
          child: Padding(
            padding: EdgeInsets.all(2),
            child: SizedBox(
              width: 64,
              height: 64,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/mohamad.png',
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Mojavad_dev',
          style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: 'GM'),
        )
      ],
    );
  }


  Widget _getPosts() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        ProfileInformationWidget(iconName: 'icon_menu.png'),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 440,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Positioned(
                top: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    width: 375,
                    height: 394,
                    child: Image.asset(
                      'assets/images/post_cover.png',
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 30,
                child: Image.asset('assets/images/icon_video.png'),
              ),
              Positioned(
                bottom: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 340,
                    height: 46,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.5),
                            Color.fromRGBO(255, 255, 255, 0.2),
                          ]),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 20,
                        sigmaY: 20,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/icon_hart.png'),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '2.6 K',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'GB',
                                      fontSize: 14),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Row(
                              children: [
                                Image.asset('assets/images/icon_comments.png'),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '1.6 K',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'GB',
                                      fontSize: 14),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            InkWell(
                                onTap: () {
                                  showModalBottomSheet(

                                    barrierColor: Colors.transparent,
                                    backgroundColor:
                                    Colors.transparent,
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) {
                                      return DraggableScrollableSheet(
                                        initialChildSize: 0.4,
                                        minChildSize: 0.2,
                                        maxChildSize: 0.85,

                                        builder: (context, scrollController) {
                                          return ShareBottomSheetWidget(controller: scrollController,);
                                        },
                                      );
                                    },
                                  );
                                },
                                child: Image.asset(
                                    'assets/images/icon_share.png')),
                            SizedBox(
                              width: 60,
                            ),
                            Image.asset('assets/images/icon_save.png'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
