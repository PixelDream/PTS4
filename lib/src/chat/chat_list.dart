import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialnetwork/src/Profile/profile_music_item.dart';

import 'chat_list_item.dart';

typedef ControllerCallback = void Function();

class chatList extends StatefulWidget {
  const chatList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return chatListState();
  }
}

class chatListState extends State<chatList> {
  final int _itemCount = 15;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: 85),
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: _itemCount,
          itemBuilder: (BuildContext context, int index) {
            return chatListItem(
              image: '',
              songName: 'Hello',
              artist: 'Adele',
            );
          },
        ),
      ),
    );
  }
}
