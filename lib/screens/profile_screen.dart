import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_app/constant/constant.dart';
import 'package:instagram_app/screens/widgets/profile_widget.dart';
import 'package:instagram_app/screens/widgets/staggerd_content.dart';
import 'package:instagram_app/screens/widgets/user_info_widget.dart';
import 'package:instagram_app/screens/widgets/your_story_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  List<String> highlightsTitle = [
    'Flutter VIP',
    'Support',
    'Shoping',
    'Projects'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: 170,
                  floating: true,
                  backgroundColor: blackColor,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(100),
                    child: Container(
                      width: double.infinity,
                      height: 20,
                      decoration: BoxDecoration(
                        color: blackColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: ClipRRect(
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset(
                          'assets/images/profile_banner.png',
                        ),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: ProfileWidget()),
                SliverToBoxAdapter(
                  child: Padding(
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
                        itemCount: highlightsTitle.length,
                        itemBuilder: (context, index) {
                          return index == 0
                              ? YourStoryWidget()
                              : _getHighlights(index, highlightsTitle[index]);
                        },
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: 20, left: 12, right: 12),
                  sliver: SliverPersistentHeader(
                    delegate: TabBarHeader(
                      TabBar(
                        indicatorWeight: 2,
                        indicatorColor: pinkColor,
                        dividerColor: darkBlueColor,
                        dividerHeight: 0.5,
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: [
                          Tab(
                            icon:
                                Image.asset('assets/images/icon_tab_posts.png'),
                          ),
                          Tab(
                            icon: Image.asset(
                                'assets/images/icon_tab_bookmark.png'),
                          ),
                        ],
                      ),
                    ),
                    pinned: true,
                    floating: true,
                  ),
                )
              ];
            },
            body: TabBarView(children: [
              CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.symmetric(vertical: 0,horizontal: 18),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        childCount: 3,
                            (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                'assets/images/staggered_pictures/post${index + 1}.png',
                              ),
                            ),
                          );
                        },
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 6,crossAxisSpacing: 6
                      ),
                    ),
                  ),
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.only(top: 20, left: 18, right: 18),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(((context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                  'assets/images/staggered_pictures/post${index + 1}.png'),
                            ),
                          ),
                        );
                      }), childCount: 3),
                      gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: [
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(2, 2),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                          ]),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _getHighlights(int index, String title) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          child: Padding(
            padding: EdgeInsets.all(2),
            child: SizedBox(
              width: 64,
              height: 64,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/$index.png',
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: 'GM'),
        )
      ],
    );
  }
}

class TabBarHeader extends SliverPersistentHeaderDelegate {
  TabBar? tabBar;

  TabBarHeader(this.tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: blackColor,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => 70;

  @override
  // TODO: implement minExtent
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
