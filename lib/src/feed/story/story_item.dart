import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StoryItem extends StatefulWidget {
  final Key key;
  final String image;
  final String fullName;
  final String time;
  final List<String> images;
  const StoryItem({required this.key, required this.image, required this.fullName, required this.images, required this.time}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StoryItemState(key: key);
  }
}

class StoryItemState extends State<StoryItem> with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  final Key key;

  StoryItemState({required this.key});

  int _current = 0;
  final CarouselController _controller = CarouselController();

  bool keepAlive = true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        GestureDetector(
          onTapDown: (TapDownDetails details) {
            if ((size.width / 2) < details.localPosition.dx) {
              _controller.nextPage();
            } else {
              _controller.previousPage();
            }
          },
          child: CarouselSlider(
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
              items: widget.images
                  .map(
                    (item) => Image.network(item, fit: BoxFit.fill, width: size.width),
                  )
                  .toList()),
        ),
        Positioned(
          bottom: 0,
          child: ElevatedButton(
            onPressed: () => _controller.nextPage(),
            child: Text(widget.time),
          ),
        )
      ],
    );

    /*return Padding(
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
    );*/
  }

  @override
  bool get wantKeepAlive => keepAlive;
}
