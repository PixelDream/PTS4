import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialnetwork/src/feed/comment_item.dart';

typedef ControllerCallback = void Function();

class CommentsList extends StatefulWidget {
  const CommentsList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CommentsListState();
  }
}

class CommentsListState extends State<CommentsList> {
  final int _itemCount = 20;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height - 140 - 300,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: _itemCount,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: index == (_itemCount - 1) ? EdgeInsets.only(bottom: 110) : EdgeInsets.only(top: 10),
            child: CommentItem(
              image: 'assets/images/user.jpg',
              fullName: "John Doe",
              text: "@johndoe",
              likeCount: index,
              isLiked: false,
            ),
          );
        },
      ),
    );
  }
}
