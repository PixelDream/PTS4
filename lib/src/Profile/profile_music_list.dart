import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialnetwork/src/Profile/profile.dart';
import 'package:socialnetwork/src/Profile/profile_music.dart';
import 'package:socialnetwork/src/feed/comment_item.dart';

typedef ControllerCallback = void Function();

class ProfileMusicList extends StatefulWidget {
  const ProfileMusicList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CommentsListState();
  }
}

class CommentsListState extends State<ProfileMusicList> {
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
            padding: EdgeInsets.only(bottom: 0,top: 20),
            child: ProfileMusic(
              image: '',
              songName: 'Hello',
              artist: 'Adele',
            ),
          );
        },
      ),
    );
  }
}
