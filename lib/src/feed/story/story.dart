import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:socialnetwork/src/feed/story/story_input.dart';

import '../../transition/slide_left_transition.dart';
import '../../transition/slide_right_transition.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1645963013935-87aaeff4ca99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1330&q=80',
  'https://images.unsplash.com/photo-1645938582994-06bc89fafe1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1330&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&h=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&h=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&h=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&h=1355&q=80'
];

class Story extends StatefulWidget {
  final int id;

  const Story({Key? key, required this.id}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StoryState();
  }
}

class StoryState extends State<Story> with TickerProviderStateMixin {
  final int _userCount = 10;
  int index = 0;

  final List<User> _users = [];
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < _userCount; i++) {
      _users.add(User(
        "john Doe",
        'assets/images/user.jpg',
        (Random().nextInt(13) + 1).toString() + ' h',
        imgList,
        //..shuffle()..take(Random().nextInt(imgList.length) + 1)))
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    int _current = 0;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff13334C),
        body: GestureDetector(
          onVerticalDragUpdate: (details) {
            if (details.delta.dy > 8) Navigator.of(context).pop();
          },
          onHorizontalDragUpdate: (details) {
            if (details.delta.dx > 5 && widget.id > 0) {
              Navigator.pushReplacement(context, SlideLeftRoute(widget: Story(id: widget.id - 1)));
            }
            if (details.delta.dx < -5 && widget.id < (_userCount - 1)) {
              Navigator.pushReplacement(context, SlideRightRoute(widget: Story(id: widget.id + 1)));
            }
          },
          onTapDown: (TapDownDetails details) {
            if ((size.width / 2) < details.localPosition.dx) {
              _controller.nextPage();
            } else {
              _controller.previousPage();
            }
          },
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                  child: Stack(
                    children: [
                      CarouselSlider(
                        carouselController: _controller,
                        options: CarouselOptions(
                          height: size.height,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: false,
                          disableCenter: true,
                          scrollPhysics: NeverScrollableScrollPhysics(),
                          onPageChanged: (index, reason) {
                            setState(() => _current = index);
                          },
                        ),
                        items: _users[widget.id]
                            .images
                            .map(
                              (item) => Image.network(item, fit: BoxFit.fill, width: size.width),
                            )
                            .toList(),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        width: size.width - 20,
                        child: Row(
                          children: const [
                            Expanded(child: LinearProgressIndicator()),
                            SizedBox(width: 5),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 10,
                        width: size.width - 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        _users[_current].image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(_users[_current].fullName,
                                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16)),
                                        SizedBox(height: 3),
                                        Text(_users[_current].time, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: size.width,
                child: Row(
                  children: const [
                    StoryInput(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class User {
  final String fullName;
  final String image;
  final String time;
  final List<String> images;

  User(this.fullName, this.image, this.time, this.images);
}
