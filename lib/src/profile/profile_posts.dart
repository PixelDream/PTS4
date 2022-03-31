import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:socialnetwork/graphql/profile_posts.data.gql.dart';
import 'package:socialnetwork/graphql/profile_posts.var.gql.dart';
import 'package:socialnetwork/src/transition/size_transition.dart';

import '../../graphql/profile_posts.req.gql.dart';
import '../../graphql/schema.schema.gql.dart';
import '../feed/post/post.dart';

class ProfileImage extends StatefulWidget {
  final String? userId;

  const ProfileImage({Key? key, this.userId}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ProfileImageState();
  }
}

class _ProfileImageState extends State<ProfileImage> {
  final Client client = GetIt.I<Client>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: 85),
        child: Operation(
          client: client,
          operationRequest: GProfilePostsReq((b) {
            b.vars.user.id = widget.userId;
            b.vars.options.sort.add(GPostSort((b) => b.createdAt = GSortDirection.ASC));
            b.fetchPolicy = FetchPolicy.NoCache;
          }),
          builder: (BuildContext context, OperationResponse<GProfilePostsData, GProfilePostsVars>? response, Object? error) {
            if (response!.loading) return Center(child: CircularProgressIndicator());

            if (response.hasErrors) return Text("Error");

            final user = response.data?.users.first;

            return GridView.builder(
              primary: false,
              padding: const EdgeInsets.all(25),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                maxCrossAxisExtent: 100,
              ),
              itemCount: user!.posts.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(SizeRoute(
                        page: Post(
                      id: user.posts[index].id,
                      image: user.posts[index].creator!.image!,
                      fullName: user.posts[index].creator!.firstName + " " + user.posts[index].creator!.lastName,
                      pseudo: user.posts[index].creator!.pseudo,
                      posts: user.posts[index].media.toList(),
                      commentCount: user.posts[index].commentsConnection.totalCount,
                      likeCount: user.posts[index].likesConnection.totalCount,
                      isLiked: (user.postLikes.where((p) => p.id == user.posts[index].id).isNotEmpty),
                    )));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'http://185.163.126.27:44300/post/' + user.posts.elementAt(index).media.first,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
