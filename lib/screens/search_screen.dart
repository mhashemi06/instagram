import 'package:flutter/material.dart';
import 'package:instagram_app/constant/constant.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> _categoryTitles = ['All','Account','Hashtag','Caption','Story', 'Comment'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 12),
                    child: SizedBox(
                      height: 46,
                      child: TextField(
                        style: Theme
                            .of(context)
                            .textTheme
                            .displaySmall,
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: Theme
                              .of(context)
                              .textTheme
                              .displaySmall,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                          fillColor: darkGrayColor,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                                color: Colors.transparent
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                                color: Colors.transparent
                            ),
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Image.asset(
                              'assets/images/icon_search_navigation.png',),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Image.asset('assets/images/icon_scan.png',),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: _getCategorySearch(),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: 12),
                  sliver: _getSliverGrid(),
                ),
                SliverPadding(padding: EdgeInsets.only(bottom: 20))
              ],
            ),
          )),
    );
  }

  SliverGrid _getSliverGrid() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        // return Container();
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: FittedBox(fit: BoxFit.cover,
            child: Image.asset(
                'assets/images/search_pictures/${index + 1}.png'),
          ),
        );
      }, childCount: 10),
      gridDelegate: SliverQuiltedGridDelegate(

        crossAxisCount: 3,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          QuiltedGridTile(2, 1),
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
        ],
      ),

    );
  }

  Widget _getCategorySearch() {
    return SizedBox(
      height: 30,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 10,
          );
        },
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  color: darkGrayColor, borderRadius: BorderRadius.circular(5)),
              child:Center(
                child: Text(
                  _categoryTitles[index],
                  style: Theme
                      .of(context)
                      .textTheme
                      .displayLarge,
                ),
              ),
          );
        },
      ),
    );
  }



}
