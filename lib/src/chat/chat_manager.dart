import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialnetwork/src/chat/chat.dart';
import 'package:socialnetwork/src/profile/profile.dart';

import 'chat_list.dart';

class ChatManager extends StatefulWidget {
  const ChatManager({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ChatManagerState();
  }
}

class _ChatManagerState extends State<ChatManager>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 90,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(15),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.message),
                iconSize: 30,
                onPressed: () {},
              ),
            ],
            title: Transform(
              transform: Matrix4.translationValues(-10.0, 0.0, 0.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for something',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xbfffffff),
                  ),
                  hintStyle: TextStyle(color: Color(0xbfffffff), fontSize: 15),
                  filled: true,
                  fillColor: Color(0xff1c4969),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                ),
              ),
            ),
            backgroundColor: Color(0xff13334C),
            bottom: TabBar(
              indicatorWeight: 3,
              //indicatorPadding: EdgeInsets.only(left: 10),
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'Tout'),
                Tab(text: '4 demandes'),
              ],
            ),
          ),
          body: TabBarView(
            children: [chatList(), chat()],
          )),
    );
  }
}
