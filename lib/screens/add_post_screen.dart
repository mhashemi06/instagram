import 'package:flutter/material.dart';
import 'package:instagram_app/constant/constant.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
           SliverToBoxAdapter(
             child: Padding(
               padding: EdgeInsets.symmetric(horizontal: 18,vertical: 20),
               child: Row(
                 children: [
                   Text('Post',style: Theme.of(context).textTheme.bodyMedium,),
                   SizedBox(width: 12,),
                   SizedBox(width: 20,height: 10,child: Image.asset('assets/images/icon_arrow_down.png'),),

                   Spacer(),
                   Text('Next',style: Theme.of(context).textTheme.bodyMedium,),
                   SizedBox(width: 10,),
                   SizedBox(width: 24,height: 24,child: Image.asset('assets/images/icon_arrow_right_box.png'),),
                 ],
               ),
             ),
           ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 20),
                child: Image.asset('assets/images/add_post/image10.png'),
              ),
            ),
            SliverGrid(delegate: SliverChildBuilderDelegate(childCount: 9,(context, index) {
              return Image.asset('assets/images/add_post/image${index+1}.png');
            }), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5
            ))
          ],
        )
      ),
    );
  }
}
