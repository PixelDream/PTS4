import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialnetwork/src/feed/post/post_item.dart';
import 'package:socialnetwork/src/feed/stories_list.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

typedef ControllerCallback = void Function();

class PostsList extends StatefulWidget {
  final ScrollController controller;
  final ControllerCallback callback;

  const PostsList({Key? key, required this.controller, required this.callback}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PostsListState();
  }
}

class PostsListState extends State<PostsList> {
  final int _itemCount = 20;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height - 140,
      child: NotificationListener(
        child: ListView.builder(
          controller: widget.controller,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 1 + _itemCount,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return StoriesList();
            }

            index -= 1;

            return Padding(
              padding: index == (_itemCount - 1) ? EdgeInsets.only(bottom: 110) : EdgeInsets.only(top: 10),
              child: PostItem(
                image: 'assets/images/user.jpg',
                fullName: "John Doe",
                pseudo: "@johndoe",
                posts: imgList,
                commentCount: _itemCount,
                likeCount: index,
                isLiked: false,
              ),
            );
          },
        ),
        onNotification: (t) {
          if (t is ScrollEndNotification) {
            widget.callback();
          }
          return true;
        },
      ),
    );
  }
}
