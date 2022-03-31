import 'package:carousel_slider/carousel_slider.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lottie/lottie.dart';
import 'package:socialnetwork/graphql/like_post.req.gql.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart';
import 'package:socialnetwork/src/feed/comments_list.dart';

import '../../../graphql/dislike_post.req.gql.dart';
import '../../utils/SaveData.dart';
import '../comment_input.dart';

class Post extends StatefulWidget {
  final String id;
  final String image;
  final String fullName;
  final String pseudo;
  final List<String> posts;
  final int commentCount;
  final int likeCount;
  final bool isLiked;
  final Function? notifyParentLike;
  final Function? notifyParentComment;

  const Post({
    Key? key,
    required this.id,
    required this.image,
    required this.fullName,
    required this.pseudo,
    required this.posts,
    required this.commentCount,
    required this.likeCount,
    required this.isLiked,
    this.notifyParentLike,
    this.notifyParentComment,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PostState();
  }
}

class PostState extends State<Post> with TickerProviderStateMixin {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  late final AnimationController _animationController;

  final Client client = GetIt.I<Client>();

  final GlobalKey<CommentsListState> _keyCommentsListState = GlobalKey();

  bool _likeVisible = false;
  late bool _isLiked;
  late int _commentCount;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this);

    _isLiked = widget.isLiked;
    _commentCount = widget.commentCount;

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
      backgroundColor: const Color(0xff13334C),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onVerticalDragUpdate: (details) {
          if (details.delta.dy > 8) Navigator.of(context).pop();
        },
        child: SafeArea(
          child: Container(
            color: Colors.white,
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
                                  (item) => Image.network('http://185.163.126.27:44300/post/' + item, fit: BoxFit.cover, width: 1500),
                                )
                                .toList(),
                          ),
                          behavior: HitTestBehavior.translucent,
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
                              /*GestureDetector(
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),*/
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
                                  _getCommentCount().toString(),
                                  style: TextStyle(color: Colors.grey.withOpacity(0.85)),
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
                                    (_getLikedData() > 1000 ? (_getLikedData() / 1000).toString() + 'K' : _getLikedData().toString()),
                                    key: ValueKey<String>(_isLiked.toString()),
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
                CommentsList(key: _keyCommentsListState, postId: widget.id),
                CommentInput(
                  postId: widget.id,
                  notifyParent: () {
                    _keyCommentsListState.currentState?.updateList();
                    widget.notifyParentComment!();
                  },
                )
              ],
            ),
          ),
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

    widget.notifyParentLike!();
  }

  void toggleLiked() => setState(() {
        _isLiked = !_isLiked;
      });

  void incCommentCount() => setState(() {
        _commentCount += 1;
      });
}
