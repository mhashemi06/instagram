import 'dart:math';

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
                  'You',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Tab(
                child: Text(
                  'Requests',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),

          Expanded(
            child: TabBarView(controller: _tabController, children: [
            CustomScrollView(
              slivers: [
              SliverToBoxAdapter(
                child:   Padding(
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
                      _getFollowing(userName: 'Aliii_tech',userProfileName: 'activity3'),
                      SizedBox(
                        height: 30,
                      ),
                      _getLikePost(userName: 'Arash_313_',userProfileName: 'activity2'),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Today',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _getFollowing2(userName: 'germany.lang',userProfileName: 'activity1'),
                      SizedBox(
                        height: 20,
                      ),
                      _getFollowing2(userName: 'sam_karman',userProfileName: 'activity4'),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'This week',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _getFollowing(userName: 'Yasin.3aberi',userProfileName: 'activity5'),
                      SizedBox(
                        height: 30,
                      ),
                      _getLikePost(userName: 'sam_313_',userProfileName: 'activity6'),

                      SizedBox(
                        height: 30,
                      ),
                      _getLikePost(userName: 'abed_747_',userProfileName: 'activity1'),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              )
              ],
            ),
             CustomScrollView(
               slivers: [
                 SliverList(delegate: SliverChildBuilderDelegate(
                   childCount: 10,
                   (context, index) {
                     return Padding(
                       padding:EdgeInsets.all(20,),
                       child: _getFollowing2(userName: 'user_04$index',userProfileName: 'activity${(index>=0 && index<=6) || index==0? index : 2}'),
                     );
                   },
                 ))
               ],
             )
            ],),
          )
        ],
      )),
    );
  }

  Widget _getFollowing({required String userName,required String userProfileName}) {
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
            'assets/images/$userProfileName.png',
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
                Text(
                  userName,
                  style: TextStyle(
                    fontFamily: 'GB',
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'Started ',
                  style: TextStyle(
                    fontFamily: 'GR',
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'following you  3min',
              style: TextStyle(
                fontFamily: 'GR',
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 35,
        ),
        Expanded(
          child: SizedBox(
            width: 60,
            height: 40,
            child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color: greyColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
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

  Widget _getLikePost({required String userName,required String userProfileName}) {
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
            'assets/images/$userProfileName.png',
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
                Text(
                  userName,
                  style: TextStyle(
                    fontFamily: 'GB',
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'Liked your post | 5 min',
                  style: TextStyle(
                    fontFamily: 'GR',
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Expanded(
          child: SizedBox(
              width: 60,
              height: 40,
              child: Image.asset('assets/images/post1.png')),
        ),
      ],
    );
  }

  Widget _getFollowing2({required String userName,required String userProfileName}) {
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
        Container(
          width: 40,
          height: 40,
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: pinkColor,
            ),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Image.asset(
            'assets/images/$userProfileName.png',
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  userName,
                  style: TextStyle(
                    fontFamily: 'GB',
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'Started ',
                  style: TextStyle(
                    fontFamily: 'GR',
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'following you  3min',
              style: TextStyle(
                fontFamily: 'GR',
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
          
        ),
        Spacer(),
        SizedBox(
          width: 100,
          height: 38,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              backgroundColor: pinkColor,
            ),
            child: Text(
              'Follow',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }
}
