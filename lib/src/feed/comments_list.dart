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
  final int _itemCount = 15;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: _itemCount,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: CommentItem(
              image: 'assets/images/user.jpg',
              fullName: "John Doe",
              text:
                  "Dum haec in oriente aguntur, Arelate hiemem agens Constantius post theatralis ludos atque circenses ambitioso editos apparatu diem sextum idus Octobres, qui imperii eius annum tricensimum.",
              likeCount: index,
              isLiked: false,
            ),
          );
        },
      ),
    );
  }
}
