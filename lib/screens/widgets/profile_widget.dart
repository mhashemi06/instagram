import 'package:flutter/material.dart';
import 'package:instagram_app/constant/constant.dart';
import 'package:instagram_app/screens/widgets/user_info_widget.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  bool isFollow = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      color: blackColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileInformationWidget(
            iconName: 'icon_profile_edit.png',
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'برنامه‌نویسی فلاتر و اندروید ، مدرس محبوب‌ترین',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'دوره مـکتـبـخونـه و بـرنـامـه نـویـس سـابـق زریـن پـال',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'تـخـصـص بـرنـامـه‌نـویسی یعنی اینده و تاثیر گذاری',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                '👇 آ موزش رایگان',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 18,
                      height: 18,
                      child: Image.asset('assets/images/icon_link.png')),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'yek.link/Amirahmad',
                    style: TextStyle(
                        color: lightBlueColor, fontFamily: 'Gb', fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 18,
                          height: 18,
                          child:
                              Image.asset('assets/images/icon_developer.png')),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'developer',
                        style: TextStyle(
                            color: greyColor, fontFamily: 'Gb', fontSize: 14),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 18,
                          height: 18,
                          child:
                              Image.asset('assets/images/icon_developer.png')),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'developer',
                        style: TextStyle(
                            color: greyColor, fontFamily: 'Gb', fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Text('23', style: Theme.of(context).textTheme.bodyMedium),
                      SizedBox(
                        width: 6,
                      ),
                      Text('Posts',
                          style: Theme.of(context).textTheme.displayMedium)
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Row(
                    children: [
                      Text('16.2K',
                          style: Theme.of(context).textTheme.bodyMedium),
                      SizedBox(
                        width: 6,
                      ),
                      Text('Followers',
                          style: Theme.of(context).textTheme.displayMedium)
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Row(
                    children: [
                      Text('280',
                          style: Theme.of(context).textTheme.bodyMedium),
                      SizedBox(
                        width: 6,
                      ),
                      Text('Following',
                          style: Theme.of(context).textTheme.displayMedium)
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 26,
          ),
          SizedBox(
            width: double.infinity,
            height: 46,
            child: isFollow?  _getInsightsWidget() : _getFollowWidget()
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _getFollowWidget() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
              height: 46,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isFollow = false;
                  });
                },
                style: Theme.of(context).elevatedButtonTheme.style,
                child: Text(
                  'Follow',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              )),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: SizedBox(
            height: 46,
            child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 2, color: greyColor),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text(
                  'Message',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'GB',
                  ),
                )),
          ),
        ),
      ],
    );
  }

  Widget _getInsightsWidget() {
    return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            side: BorderSide(width: 2, color: greyColor),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Text(
          'Insights',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'GB',
          ),
        ));
  }
}

//
// class ProfileWidget extends StatelessWidget {
//   const ProfileWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.symmetric(horizontal: 18),
//         color: blackColor,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ProfileInformationWidget(
//               iconName: 'icon_profile_edit.png',
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'برنامه‌نویسی فلاتر و اندروید ، مدرس محبوب‌ترین',
//                   style: Theme.of(context).textTheme.bodySmall,
//                 ),
//                 SizedBox(
//                   height: 3,
//                 ),
//                 Text(
//                   'دوره مـکتـبـخونـه و بـرنـامـه نـویـس سـابـق زریـن پـال',
//                   style: Theme.of(context).textTheme.bodySmall,
//                 ),
//                 SizedBox(
//                   height: 3,
//                 ),
//                 Text(
//                   'تـخـصـص بـرنـامـه‌نـویسی یعنی اینده و تاثیر گذاری',
//                   style: Theme.of(context).textTheme.bodySmall,
//                 ),
//                 SizedBox(
//                   height: 3,
//                 ),
//                 Text(
//                   '👇 آ موزش رایگان',
//                   style: Theme.of(context).textTheme.bodySmall,
//                 ),
//                 SizedBox(
//                   height: 6,
//                 ),
//                 Row(
//                   children: [
//                     SizedBox(
//                         width: 18,
//                         height: 18,
//                         child: Image.asset(
//                             'assets/images/icon_link.png')),
//                     SizedBox(
//                       width: 6,
//                     ),
//                     Text(
//                       'yek.link/Amirahmad',
//                       style: TextStyle(
//                           color: lightBlueColor,
//                           fontFamily: 'Gb',
//                           fontSize: 14),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 12,
//                 ),
//                 Row(
//                   children: [
//                     Row(
//                       children: [
//                         SizedBox(
//                             width: 18,
//                             height: 18,
//                             child: Image.asset(
//                                 'assets/images/icon_developer.png')),
//                         SizedBox(
//                           width: 6,
//                         ),
//                         Text(
//                           'developer',
//                           style: TextStyle(
//                               color: greyColor,
//                               fontFamily: 'Gb',
//                               fontSize: 14),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       width: 12,
//                     ),
//                     Row(
//                       children: [
//                         SizedBox(
//                             width: 18,
//                             height: 18,
//                             child: Image.asset(
//                                 'assets/images/icon_developer.png')),
//                         SizedBox(
//                           width: 6,
//                         ),
//                         Text(
//                           'developer',
//                           style: TextStyle(
//                               color: greyColor,
//                               fontFamily: 'Gb',
//                               fontSize: 14),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 12,
//                 ),
//                 Row(
//                   children: [
//                     Row(
//                       children: [
//                         Text('23',
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyMedium),
//                         SizedBox(
//                           width: 6,
//                         ),
//                         Text('Posts',
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .displayMedium)
//                       ],
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     Row(
//                       children: [
//                         Text('16.2K',
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyMedium),
//                         SizedBox(
//                           width: 6,
//                         ),
//                         Text('Followers',
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .displayMedium)
//                       ],
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     Row(
//                       children: [
//                         Text('280',
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyMedium),
//                         SizedBox(
//                           width: 6,
//                         ),
//                         Text('Following',
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .displayMedium)
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             SizedBox(
//               width: double.infinity,
//               height: 46,
//               child: OutlinedButton(
//                   onPressed: () {},
//                   style: OutlinedButton.styleFrom(
//                       side: BorderSide(
//                           width: 2,
//                           color:greyColor
//                       ),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(15)
//                       )
//                   ),
//                   child: Text(
//                     'Insights',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontFamily: 'GB',
//                     ),
//                   )),
//             )
//           ],
//         ));
//   }
// }
