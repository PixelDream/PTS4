import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:socialnetwork/src/feed/comments_list.dart';

import '../comment_input.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class Post extends StatefulWidget {
  final String image;
  final String fullName;
  final String pseudo;
  final List<String> posts;
  final int commentCount;
  final int likeCount;
  final bool isLiked;

  const Post(
      {Key? key,
      required this.image,
      required this.fullName,
      required this.pseudo,
      required this.posts,
      required this.commentCount,
      required this.likeCount,
      required this.isLiked})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PostState();
  }
}

class PostState extends State<Post> with TickerProviderStateMixin {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  late final AnimationController _animationController;

  bool _likeVisible = false;
  bool _isLiked = false;
  int _likeCount = 0;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this);

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.forward) setState(() => _likeVisible = true);
      if (status == AnimationStatus.completed) setState(() => _likeVisible = false);
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onVerticalDragUpdate: (details) {
          if (details.delta.dy > 8) Navigator.of(context).pop();
        },
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                      child: GestureDetector(
                        child: CarouselSlider(
                          carouselController: _controller,
                          options: CarouselOptions(
                            viewportFraction: 1.0,
                            autoPlay: true,
                            enableInfiniteScroll: false,
                            pauseAutoPlayInFiniteScroll: true,
                            pauseAutoPlayOnTouch: true,
                            disableCenter: true,
                            onPageChanged: (index, reason) {
                              setState(() => _current = index);
                            },
                          ),
                          items: widget.posts
                              .map(
                                (item) => Image.network(item, fit: BoxFit.fill, width: 1500),
                              )
                              .toList(),
                        ),
                        behavior: HitTestBehavior.translucent,
                        onDoubleTap: () {
                          if (!_isLiked) {
                            setState(() {
                              _likeCount += 1;
                              _isLiked = !_isLiked;
                            });
                          }

                          _animationController
                            ..reset()
                            ..forward();
                        },
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 25,
                              ),
                              onTap: () => Navigator.of(context).pop(),
                            ),
                            GestureDetector(
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imgList.asMap().entries.map((entry) {
                          return Container(
                            width: 10,
                            height: 10,
                            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == entry.key ? Colors.white.withOpacity(0.85) : Colors.grey.withOpacity(0.85),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Positioned(
                      bottom: 80,
                      top: 80,
                      right: 130,
                      left: 130,
                      child: Visibility(
                        visible: _likeVisible && _isLiked,
                        maintainState: true,
                        child: Lottie.asset(
                          "assets/lottie/like.json",
                          fit: BoxFit.fill,
                          controller: _animationController,
                          onLoaded: (composition) => _animationController.duration = composition.duration,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(Icons.messenger, color: Colors.grey.withOpacity(0.85), size: 27),
                              ),
                              Text(
                                widget.commentCount.toString(),
                                style: TextStyle(color: Colors.grey.withOpacity(0.85)),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            setState(() {
                              _isLiked ? _likeCount -= 1 : _likeCount += 1;
                              _isLiked = !_isLiked;
                            });

                            _animationController
                              ..reset()
                              ..forward();
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(Icons.favorite, color: _isLiked ? Colors.redAccent : Colors.grey.withOpacity(0.85), size: 27),
                              ),
                              AnimatedSwitcher(
                                duration: Duration(milliseconds: 200),
                                transitionBuilder: (Widget child, Animation<double> animation) {
                                  return SlideTransition(
                                    child: child,
                                    position: Tween<Offset>(begin: Offset(0.0, -0.5), end: Offset(0.0, 0.0)).animate(animation),
                                  );
                                },
                                child: Text(
                                  (_likeCount > 1000 ? (_likeCount / 1000).toString() + 'K' : _likeCount.toString()),
                                  key: ValueKey<String>(_likeCount.toString()),
                                  style: TextStyle(color: Colors.grey.withOpacity(0.85)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Icon(Icons.send, color: Colors.grey.withOpacity(0.85), size: 27),
                    ),
                  ],
                ),
              ),
              CommentsList(),
              CommentInput()
            ],
          ),
        ),
      ),
    );
  }
}
