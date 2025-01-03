import 'package:flutter/material.dart';
import 'package:instagram_app/constant/constant.dart';

class ProfileInformationWidget extends StatelessWidget {
  final String iconName;
  final String? title;
  final String? subTitle;
  final String? userPic;

  const ProfileInformationWidget(
      {super.key, required this.iconName, this.title, this.subTitle, this.userPic});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                borderRadius: BorderRadius.circular(11),
                child: Image.asset(
                userPic!=null? 'assets/images/contacts/$userPic.png' :  'assets/images/profile_amirahmad.png',
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${title != null ? title : 'amirahmadadibi'}',
              style: TextStyle(
                  color: Colors.white, fontSize: 14, fontFamily: 'GB'),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '${subTitle != null ? subTitle : 'برنامه نویس موبایل'}',
              style: TextStyle(
                  color: Colors.white, fontSize: 14, fontFamily: 'SM'),
            ),
          ],
        ),
        Spacer(),
        Image.asset(
          'assets/images/$iconName',
        )
      ],
    );
  }
}
