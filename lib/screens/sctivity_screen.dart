import 'package:flutter/material.dart';
import 'package:instagram_app/constant/constant.dart';

class ActivityScreenScreen extends StatefulWidget {
  const ActivityScreenScreen({super.key});

  @override
  State<ActivityScreenScreen> createState() => _ActivityScreenScreenState();
}

class _ActivityScreenScreenState extends State<ActivityScreenScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TabBar(
            controller: _tabController,
            indicatorWeight: 2,
            indicatorColor: pinkColor,
            dividerColor: darkBlueColor,
            dividerHeight: 0.5,
            padding: EdgeInsets.symmetric(horizontal: 18),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Text(
                  'Following',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Tab(
                child: Text(
                  'You',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    _getFollowing(),
                    SizedBox(height: 30,),
                    _getLikePost(),
                  ],
                ),
              ),
              Container(),
            ]),
          )
        ],
      )),
    );
  }

  Widget _getFollowing(){
    return Row(
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: pinkColor,
          ),
        ),
        SizedBox(
          width: 6,
        ),
        SizedBox(
          width: 40,
          height: 40,
          child: Image.asset(
            'assets/images/profile_amirahmad.png',
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('amirahmadadibii',style:TextStyle(
                  fontFamily: 'GB',fontSize: 12,color: Colors.white,
                ),),
                SizedBox(width: 3,),
                Text('Started ',style: TextStyle(
                  fontFamily: 'GR',fontSize: 12,color: Colors.white,
                ),),
              ],
            ),
            SizedBox(height: 6,),
            Text('following you  3min',style:TextStyle(
              fontFamily: 'GR',fontSize: 12,color: Colors.white,
            ),),
          ],
        ),
        SizedBox(width: 35,),
        Expanded(
          child: SizedBox(
            width: 60,
            height: 40,
            child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color: greyColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),),),
                child: Text(
                  'Message',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'GB',
                  ),
                )),
          ),
        ),
      ],
    );
  }

  Widget _getLikePost(){
    return Row(
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: pinkColor,
          ),
        ),
        SizedBox(
          width: 6,
        ),
        SizedBox(
          width: 40,
          height: 40,
          child: Image.asset(
            'assets/images/profile_amirahmad.png',
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('amirahmadadibii',style:TextStyle(
                  fontFamily: 'GB',fontSize: 12,color: Colors.white,
                ),),
                SizedBox(width: 3,),
                Text('Started ',style: TextStyle(
                  fontFamily: 'GR',fontSize: 12,color: Colors.white,
                ),),
              ],
            ),
            SizedBox(height: 6,),
            Text('following you  3min',style:TextStyle(
              fontFamily: 'GR',fontSize: 12,color: Colors.white,
            ),),
          ],
        ),
        SizedBox(width: 35,),
        Expanded(
          child: SizedBox(
            width: 60,
            height: 40,
            child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color: greyColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),),),
                child: Text(
                  'Message',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'GB',
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
