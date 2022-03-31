import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lottie/lottie.dart';
import 'package:socialnetwork/src/feed/post/post.dart';
import 'package:socialnetwork/src/profile/profile.dart';
import 'package:socialnetwork/src/transition/size_transition.dart';

import '../../../graphql/dislike_post.req.gql.dart';
import '../../../graphql/like_post.req.gql.dart';
import '../../../graphql/schema.schema.gql.dart';
import '../../utils/SaveData.dart';

class PostItem extends StatefulWidget {
  final String id;
  final String userId;
  final String image;
  final String fullName;
  final String pseudo;
  final List<String> posts;
  final int commentCount;
  final int likeCount;
  final bool isLiked;

  const PostItem(
      {Key? key,
      required this.id,
      required this.userId,
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
    return PostItemState();
  }
}

class PostItemState extends State<PostItem> with TickerProviderStateMixin {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  late final AnimationController _animationController;
  final GlobalKey<PostState> _keyPostState = GlobalKey();

  final Client client = GetIt.I<Client>();

  bool _likeVisible = false;
  late bool _isLiked;
  late int _commentCount;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this);

    _isLiked = widget.isLiked;
    _commentCount = widget.commentCount;

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.forward) setState(() => _likeVisible = true);
      if (status == AnimationStatus.completed) setState(() => _likeVisible = false);
    });

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 5),
      child: Card(
        elevation: 4,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(SizeRoute(page: Profile(userId: widget.userId)));
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              widget.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.fullName, style: TextStyle(color: Color(0xff13334C), fontWeight: FontWeight.w700, fontSize: 16)),
                              SizedBox(height: 3),
                              Text(widget.pseudo, style: TextStyle(color: Color(0xff13334C), fontWeight: FontWeight.w400, fontSize: 12)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
/*                  GestureDetector(
                    child: Icon(Icons.more_vert),
                  )*/
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, right: 15, left: 15),
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () => Navigator.of(context).push(
                  SizeRoute(
                    page: Post(
                      key: _keyPostState,
                      id: widget.id,
                      image: widget.image,
                      fullName: widget.fullName,
                      pseudo: widget.pseudo,
                      posts: widget.posts,
                      commentCount: widget.commentCount,
                      likeCount: widget.likeCount,
                      isLiked: widget.isLiked,
                      notifyParentLike: () => setState(() {
                        _isLiked = !_isLiked;
                      }),
                      notifyParentComment: () => setState(() {
                        _commentCount += 1;
                        _keyPostState.currentState?.incCommentCount();
                      }),
                    ),
                  ),
                ),
                onDoubleTap: () {
                  if (!_isLiked) {
                    _toggleLike();
                    setState(() {
                      _isLiked = !_isLiked;
                    });
                  }

                  _animationController
                    ..reset()
                    ..forward();
                },
                child: SizedBox(
                  height: 250,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CarouselSlider(
                            carouselController: _controller,
                            options: CarouselOptions(
                              viewportFraction: 1.0,
                              autoPlay: false,
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
                                .toList()),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: widget.posts.map((entry) {
                            return Container(
                              width: 10,
                              height: 10,
                              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == widget.posts.indexOf(entry) ? Colors.white.withOpacity(0.85) : Colors.grey.withOpacity(0.85),
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
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        height: 50,
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 1),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.white.withOpacity(0.4)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 15),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(right: 5),
                                                child: Icon(Icons.messenger, color: Colors.white.withOpacity(0.85), size: 27),
                                              ),
                                              Text(
                                                _getCommentCount().toString(),
                                                style: TextStyle(color: Colors.white.withOpacity(0.85)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          behavior: HitTestBehavior.translucent,
                                          onTap: () {
                                            _toggleLike();
                                            setState(() {
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
                                                child: Icon(Icons.favorite, color: _isLiked ? Colors.redAccent : Colors.white, size: 27),
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
                                                  (_getLikedData() > 1000 ? (_getLikedData() / 1000).toString() + 'K' : _getLikedData().toString()),
                                                  key: ValueKey<String>(_isLiked.toString()),
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      child: Icon(Icons.send, color: Colors.white.withOpacity(0.85), size: 27),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  int _getLikedData() {
    if (widget.isLiked == _isLiked) {
      return widget.likeCount;
    }

    if (_isLiked) {
      return widget.likeCount + 1;
    }

    return widget.likeCount - 1;
  }

  int _getCommentCount() {
    if (widget.commentCount != _commentCount) {
      return _commentCount;
    }

    return widget.commentCount;
  }

  void _toggleLike() async {
    if (_isLiked) {
      final dislikePost = GDislikePostReq((b) {
        b.vars.user.id = SaveData.id;
        b.vars.disconnect.postLikes.add(GUserPostLikesDisconnectFieldInput((b) {
          b.where.node.id = widget.id;
        }));
      });

      await client.request(dislikePost).firstWhere((response) => response.dataSource != DataSource.Optimistic);
    } else {
      final likePost = GLikePostReq((b) {
        b.vars.user.id = SaveData.id;
        b.vars.connect.postLikes.add(GUserPostLikesConnectFieldInput((b) {
          b.where.node.id = widget.id;
        }));
      });

      await client.request(likePost).firstWhere((response) => response.dataSource != DataSource.Optimistic);
    }

    _keyPostState.currentState?.toggleLiked();
  }
}
