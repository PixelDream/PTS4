import 'package:carousel_slider/carousel_slider.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:socialnetwork/graphql/load_story.data.gql.dart';
import 'package:socialnetwork/graphql/load_story.req.gql.dart';
import 'package:socialnetwork/graphql/load_story.var.gql.dart';
import 'package:socialnetwork/src/feed/story/story_input.dart';

import '../../transition/slide_left_transition.dart';
import '../../transition/slide_right_transition.dart';

class StoryPage extends StatefulWidget {
  final String id;
  final List<String> next;
  final List<String> prev;

  const StoryPage({Key? key, required this.id, required this.next, required this.prev}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StoryPageState();
  }
}

class StoryPageState extends State<StoryPage> with TickerProviderStateMixin {
  int index = 0;

  final Client client = GetIt.I<Client>();

  final CarouselController _controller = CarouselController();

  final List<Widget> progress = [];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    int _current = 0;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff13334C),
          body: Operation(
            client: client,
            operationRequest: GloadStoriesReq((b) {
              b.vars.where.id = widget.id;
            }),
            builder: (BuildContext context, OperationResponse<GloadStoriesData, GloadStoriesVars>? response, Object? error) {
              if (response!.loading) return Center(child: CircularProgressIndicator());

              if (response.hasErrors) return Text("Error");

              var friend = response.data!.users.first;
              var stories = friend.stories;

              final List<String> prev = widget.prev.toList();
              final List<String> next = widget.next.toList();

              for (int i = 0; i < stories.length; i++) {
                progress.add(LinearProgressIndicator(
                  minHeight: 0.4,
                ));
              }

              return GestureDetector(
                onVerticalDragUpdate: (details) {
                  if (details.delta.dy > 8) Navigator.of(context).pop();
                },
                onHorizontalDragUpdate: (details) {
                  if (details.delta.dx > 5 && widget.prev.length > 0) {
                    prev.add(widget.id);
                    var newCurrent = prev.removeLast();
                    Navigator.pushReplacement(context, SlideLeftRoute(widget: StoryPage(id: newCurrent, next: next, prev: prev)));
                  }
                  if (details.delta.dx < -5 && widget.next.length > 0) {
                    prev.add(widget.id);
                    var newCurrent = next.removeAt(0);
                    Navigator.pushReplacement(context, SlideRightRoute(widget: StoryPage(id: newCurrent, next: next, prev: prev)));
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
                              items: stories
                                  .map(
                                    (story) => Image.network('http://185.163.126.27:44300/story/' + story.media, fit: BoxFit.fill, width: size.width),
                                  )
                                  .toList(),
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                              width: size.width - 20,
                              child: Row(
                                children: const [],
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
                                            child: Image.network(
                                              stories[_current].creator!.image!,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(stories[_current].creator!.firstName,
                                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16)),
                                              SizedBox(height: 3),
                                              Text(stories[_current].createdAt!.value.toString(),
                                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12)),
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
              );
            },
          )),
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
