import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CommentItem extends StatefulWidget {
  final String image;
  final String fullName;
  final String text;
  final int likeCount;
  final bool isLiked;

  const CommentItem({Key? key, required this.image, required this.fullName, required this.text, required this.likeCount, required this.isLiked})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CommentItemState();
  }
}

class CommentItemState extends State<CommentItem> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

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
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            child: SizedBox(
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
                          ),
                          GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Icon(Icons.favorite, color: Colors.red, size: 15),
                                  ),
                                  Text("70"),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.fullName, style: TextStyle(color: Color(0xff13334C), fontWeight: FontWeight.w700, fontSize: 16)),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          widget.text,
                          style: TextStyle(color: Color(0xff13334C), fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
