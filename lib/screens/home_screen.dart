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
  List<String> contactsName = [
    'Mojavad_dev',
    'Mahaa.candle',
    'Webq.co',
    'S_mojavad',
    'germany.lang',
    'sam_karman',
    'yassiii05',
  ];
  List<String> userName = [
    'amirAhmadAdibi',
    'sam_karman',
    'jewelry88',
    'ali.mbb',
    'germany.lang',
    'sam_karman',
    'yassiii05',
    'Mojavad_dev',
  ];
  List<String> subtitles = [
    'برنامه نویس موبایل',
    'توریست',
    'طراح جواهرات',
    'مهندس عمران',
    'مهندس عمران',
    'گرافیست',
    'دکوراسیون داخلی',
  ];
  List<String> usersProfile = [
    'contact0',
    'contact12',
    'contact8',
    'contact9',
    'contact5',
    'contact1',
    'contact10',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        appBar: _getAppBar(),
        body:  CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: 120,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),

                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return index == 0
                        ? YourStoryWidget()
                        : _getContentStory(contactsName[index], index);
                  },
                ),
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 7,
                    (context, index) {
                  return _getPosts(index,userName[index],subtitles[index]);
                },
              ),
            ),
          ],
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

  Widget _getContentStory(String name, int index) {
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
                  'assets/images/contacts/contact${index > 0 && index < 7 ? index : index + 1}.png',
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: 'GM'),
        )
      ],
    );
  }

  Widget _getPosts(int index,String title,String subtitle) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ProfileInformationWidget(iconName: 'icon_menu.png',title: title,subTitle: subtitle,userPic: usersProfile[index]),
        ),
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
                  child:SizedBox(
                    width: 375,
                    height: 394,
                    child: Image.asset(
                    'assets/images/item${index}.png',
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
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) {
                                      return DraggableScrollableSheet(
                                        initialChildSize: 0.4,
                                        minChildSize: 0.2,
                                        maxChildSize: 0.85,
                                        builder: (context, scrollController) {
                                          return ShareBottomSheetWidget(
                                            controller: scrollController,
                                          );
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
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
