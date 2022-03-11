import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:socialnetwork/src/feed/post/post.dart';
import 'package:socialnetwork/src/transition/size_transition.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class PostItem extends StatefulWidget {
  final String image;
  final String fullName;
  final String pseudo;
  final List<String> posts;
  final int commentCount;
  final int likeCount;
  final bool isLiked;

  const PostItem(
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
    return PostItemState();
  }
}

class PostItemState extends State<PostItem> with TickerProviderStateMixin {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 5),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          SizeRoute(
            page: Post(
              image: widget.image,
              fullName: widget.fullName,
              pseudo: widget.pseudo,
              posts: widget.posts,
              commentCount: widget.commentCount,
              likeCount: widget.likeCount,
              isLiked: widget.isLiked,
            ),
          ),
        ),
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
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                widget.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
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
                    GestureDetector(
                      child: Icon(Icons.more_vert),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, right: 15, left: 15),
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
                                .toList()),
                      ),
                      Positioned(
                        bottom: 50,
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
                                padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                                child: Icon(Icons.messenger, color: Colors.white.withOpacity(0.85), size: 27),
                                              ),
                                              Text(
                                                widget.commentCount.toString(),
                                                style: TextStyle(color: Colors.white.withOpacity(0.85)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 5),
                                              child: Icon(Icons.favorite, color: Colors.white.withOpacity(0.85), size: 27),
                                            ),
                                            Text(
                                              (widget.likeCount > 1000 ? (widget.likeCount / 1000).toString() + 'K' : widget.likeCount.toString()),
                                              style: TextStyle(color: Colors.white.withOpacity(0.85)),
                                            ),
                                          ],
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
