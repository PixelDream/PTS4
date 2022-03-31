import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:socialnetwork/graphql/create_commentary.req.gql.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart';
import 'package:socialnetwork/src/utils/SaveData.dart';

class CommentInput extends StatefulWidget {
  final String postId;
  final Function() notifyParent;

  const CommentInput({Key? key, required this.postId, required this.notifyParent}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CommentInputState();
  }
}

class CommentInputState extends State<CommentInput> {
  final _formKey = GlobalKey<FormState>();
  final _commentField = TextEditingController();
  bool _isLoading = false;

  final Client client = GetIt.I<Client>();

  void _comment() async {
    setState(() => _isLoading = true);

    final createReviewReq = GCreateCommentaryReq((b) => b
      ..vars.input.add(GCommentCreateInput((b) {
        b.commentary = _commentField.value.text;
        b.post.connect.where.node.id = widget.postId;
        b.creator.connect.where.node.id = SaveData.id;
      })));

    final result = await client.request(createReviewReq).firstWhere((response) => response.dataSource != DataSource.Optimistic);

    if (!result.hasErrors) {
      if (result.data?.createComments.info.nodesCreated == 1) {
        setState(() => _isLoading = false);
        _commentField.clear();
        widget.notifyParent();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: Color(0xff13334C),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: _formKey,
          child: TextFormField(
            controller: _commentField,
            enabled: !_isLoading,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Ajouter un commentaire",
              hintStyle: const TextStyle(color: Colors.white, fontSize: 12, letterSpacing: 1),
              filled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(100), borderSide: BorderSide.none),
              fillColor: const Color(0xff1c4969),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              isDense: true,
              suffixIconConstraints: BoxConstraints.loose(Size(50, 20)),
              suffixIcon: IconButton(
                splashRadius: 1,
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  _isLoading ? Icons.schedule_send : Icons.send,
                  color: Colors.white, //Color(0xffFD5F00),
                ),
                padding: EdgeInsets.all(0),
                onPressed: () {
                  if (_commentField.value.text.isNotEmpty) _comment();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
