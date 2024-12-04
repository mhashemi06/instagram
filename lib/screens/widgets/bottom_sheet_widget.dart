import 'dart:ui';
import 'package:flutter/material.dart';

class ShareBottomSheetWidget extends StatelessWidget {
  final ScrollController? controller;

  ShareBottomSheetWidget({super.key, this.controller});

  List<String> contactsName = [
    'Your Story',
    'Mahaa.candle',
    'Webq.co',
    'S_mojavad',
    'germany.lang',
    'sam_karman',
    'Abed.kamali',
    'Arash_313_',
    'Mojavad_dev',
    'Alirezaaa',
    'Sara.karimi',
    'yasiiin_',
    'flutter_dev',
    'testContact',
    'yassiii05',
    'programmer01'
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              CustomScrollView(
                controller: controller,
                slivers: [
                  _getHeaderBottomSheet(context),
                  _getContactList(),
                ],
              ),
              Positioned(
                child: _getSendButton(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  ///===================Header of bottomSheet style========================
  Widget _getHeaderBottomSheet(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Share',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Image.asset(
                'assets/images/icon_share_bottomsheet.png',
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 26),
            child: SizedBox(
              height: 46,
              child: TextField(
                style: Theme.of(context).textTheme.displaySmall,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: Theme.of(context).textTheme.displaySmall,
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                  fillColor: Colors.white.withOpacity(0.3),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Image.asset(
                      'assets/images/icon_search_navigation.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///====================== Grid view for Contact list ========================
  Widget _getContactList() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Column(
            children: [
              Container(
                width: 64,
                height: 64,
                margin: EdgeInsets.symmetric(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child:
                    Image.asset('assets/images/contacts/contact${index}.png'),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: Text(
                  '${contactsName[index]}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'GM',
                      overflow: TextOverflow.ellipsis),
                ),
              ),
            ],
          );
        },
        childCount: 12,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.78),
    );
  }

  ///======================Send Button===========================
  Widget _getSendButton(BuildContext context) {
    return SizedBox(
      width: 129,
      height: 46,
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style,
        onPressed: () {},
        child: Text(
          'Send',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
