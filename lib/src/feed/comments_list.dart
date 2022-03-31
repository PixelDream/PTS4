import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:socialnetwork/graphql/load_comments.data.gql.dart';
import 'package:socialnetwork/graphql/load_comments.req.gql.dart';
import 'package:socialnetwork/graphql/load_comments.var.gql.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart';
import 'package:socialnetwork/src/feed/comment_item.dart';

class CommentsList extends StatefulWidget {
  final String postId;

  const CommentsList({Key? key, required this.postId}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CommentsListState();
  }
}

class CommentsListState extends State<CommentsList> {
  final Client client = GetIt.I<Client>();

  late GLoadCommentsReq _loadCommentsReq;
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _loadCommentsReq = GLoadCommentsReq((b) {
      b.fetchPolicy = FetchPolicy.CacheAndNetwork;
      b.vars.post.post.id = widget.postId;
      b.vars.options.sort.add(GCommentSort((b) => b.createdAt = GSortDirection.ASC));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Operation(
        client: client,
        operationRequest: _loadCommentsReq,
        builder: (BuildContext context, OperationResponse<GLoadCommentsData, GLoadCommentsVars>? response, Object? error) {
          if (response!.loading) return Center(child: CircularProgressIndicator());

          final data = response.data;

          if (data == null || response.hasErrors) return Text("Error");

          final comments = data.comments;

          if (comments.isEmpty) {
            //return Lottie.network("https://assets7.lottiefiles.com/private_files/lf30_soknazp1.json", repeat: false);
            return Center(
              child: Text(
                "Aucun commentaires pour le moment",
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
            );
          }

          return ListView.builder(
            controller: _controller,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: comments.length,
            itemBuilder: (BuildContext context, int index) {
              final commentary = comments.elementAt(index);

              return Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: CommentItem(
                  image: commentary.creator.image!,
                  fullName: commentary.creator.firstName + " " + commentary.creator.lastName,
                  text: commentary.commentary,
                  likeCount: index,
                  isLiked: false,
                ),
              );
            },
          );
        },
      ),
    );
  }

  void updateList() => client.requestController.add(_loadCommentsReq);
}
