import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:socialnetwork/graphql/feed.data.gql.dart';
import 'package:socialnetwork/graphql/feed.req.gql.dart';
import 'package:socialnetwork/graphql/feed.var.gql.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart';
import 'package:socialnetwork/src/feed/post/post_item.dart';
import 'package:socialnetwork/src/utils/SaveData.dart';

import 'story/story.dart';

typedef ControllerCallback = void Function();

class Feed extends StatefulWidget {
  final ScrollController controller;
  final ControllerCallback callback;

  const Feed({Key? key, required this.controller, required this.callback}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FeedState();
  }
}

class FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final Client client = GetIt.I<Client>();

    return Operation(
      client: client,
      operationRequest: GFeedReq((b) {
        b.vars.user.id = SaveData.id;
        b.vars.options.sort.add(GPostSort((b) => b.createdAt = GSortDirection.ASC));
        b.vars.friend.friendsConnection.edge.Status = GRequestStatus.ACCEPTED;
      }),
      builder: (BuildContext context, OperationResponse<GFeedData, GFeedVars>? response, Object? error) {
        if (response!.loading) return Center(child: CircularProgressIndicator());

        if (response.hasErrors) return Text("Error");

        final users = response.data?.users.first;

        List<GFeedData_users_friends_posts> posts = [];
        for (var user in users!.friends) {
          posts.addAll(user.posts);
        }

        final friendsList = users.friends.where((p0) => p0.storiesConnection.totalCount != 0);

        return Column(
          children: [
            SizedBox(
              height: 110,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: friendsList.length,
                itemBuilder: (BuildContext context, int index) {
                  final List<String> friends = friendsList.map((p0) => p0.id).toList();

                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 5),
                    child: GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => StoryPage(
                              id: friendsList.elementAt(index).id,
                              prev: index != 0 ? friends.take(index).toList() : [],
                              next: index != friends.length ? friends.skip(index + 1).toList() : [],
                            ),
                          ),
                        )
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 80,
                            width: 80,
                            child: Card(
                              elevation: 5,
                              borderOnForeground: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                side: (index > 2 ? false : true) ? BorderSide(color: Color(0xff005792), width: 3) : BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.network(
                                friendsList.elementAt(index).image!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              friendsList.elementAt(index).firstName,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: size.height - 45,
              child: NotificationListener(
                child: ListView.builder(
                  controller: widget.controller,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 0 + posts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: index == (posts.length - 1) ? EdgeInsets.only(bottom: 110) : EdgeInsets.only(top: 10),
                      child: PostItem(
                        id: posts[index].id,
                        userId: posts[index].creator!.id,
                        image: posts[index].creator!.image!,
                        fullName: posts[index].creator!.firstName + " " + posts[index].creator!.lastName,
                        pseudo: posts[index].creator!.pseudo,
                        posts: posts[index].media.toList(),
                        commentCount: posts[index].commentsConnection.totalCount,
                        likeCount: posts[index].likesConnection.totalCount,
                        isLiked: (users.postLikes.where((p) => p.id == posts[index].id).isNotEmpty),
                      ),
                    );
                  },
                ),
                onNotification: (t) {
                  if (t is ScrollEndNotification) widget.callback();
                  return true;
                },
              ),
            )
          ],
        );
      },
    );
  }
}
