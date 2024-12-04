import 'package:flutter/material.dart';
import 'package:instagram_app/constant/constant.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  int? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            _getAppBar(),
            _getSelectImage(),
            _getImageList(),
          ],
        ),
      ),
    );
  }

  ///=================AppBar======================
  Widget _getAppBar() {
    return SliverAppBar(
      pinned: true,
      backgroundColor: blackColor,
      title: Padding(
        padding: EdgeInsets.only(left: 8),
        child: Row(
          children: [
            Text(
              'Post',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              width: 12,
            ),
            SizedBox(
              width: 20,
              height: 10,
              child: Image.asset('assets/images/icon_arrow_down.png'),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Row(
            children: [
              Text(
                'Next',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 24,
                height: 24,
                child: Image.asset('assets/images/icon_arrow_right_box.png'),
              ),
            ],
          ),
        )
      ],
    );
  }

  ///=================Select Image======================
  Widget _getSelectImage() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
          right: 18,
          left: 18,
          bottom: 20,
          top: 8,
        ),
        child: Builder(builder: (context) {
          if (_selectedItem == null) {
            return Image.asset('assets/images/add_post/image10.png');
          }
          return ClipRRect(
            child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(
                    'assets/images/add_post/image${_selectedItem! + 1}.png')),
          );
        }),
      ),
    );
  }
  
  ///=================Image List======================
  Widget _getImageList() {
    return SliverPadding(
      padding: EdgeInsets.only(left: 18, right: 18, bottom: 20),
      sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            childCount: 9,
            (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedItem = index;
                  });
                },
                child: Image.asset(
                  'assets/images/add_post/image${index + 1}.png',
                ),
              );
            },
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5)),
    );
  }
}
