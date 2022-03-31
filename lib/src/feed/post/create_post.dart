import 'dart:convert';
import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:socialnetwork/graphql/create_post.req.gql.dart';
import 'package:spotify/spotify.dart' as S;

import '../../../graphql/schema.schema.gql.dart';
import '../../../graphql/upload_files.req.gql.dart';

class CreatePost extends StatefulWidget {
  final List<File> imageFileList;
  final S.Track? track;

  const CreatePost({Key? key, required this.imageFileList, this.track}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  bool _publishing = false;

  final _formKey = GlobalKey<FormState>();
  final _postField = TextEditingController();

  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    const storage = FlutterSecureStorage();
    final Size size = MediaQuery.of(context).size;
    final Client client = GetIt.I<Client>();

    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff13334C),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Nouvelle publication",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                )
              ],
            ),
          ),
          Form(
            key: _formKey,
            child: Expanded(
              child: SizedBox(
                width: size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 300,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                            child: CarouselSlider(
                              carouselController: _controller,
                              options: CarouselOptions(
                                viewportFraction: 1.0,
                                enableInfiniteScroll: false,
                                disableCenter: true,
                                onPageChanged: (index, reason) {
                                  setState(() => _current = index);
                                },
                              ),
                              items: widget.imageFileList
                                  .map(
                                    (img) => Image.file(img, fit: BoxFit.cover, width: 1500),
                                  )
                                  .toList(),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: widget.imageFileList.map((entry) {
                                return Container(
                                  width: 10,
                                  height: 10,
                                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _current == widget.imageFileList.indexOf(entry)
                                        ? Colors.white.withOpacity(0.85)
                                        : Colors.grey.withOpacity(0.85),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      width: size.width - 100,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }

                          return null;
                        },
                        controller: _postField,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Description du post...",
                          hintStyle: const TextStyle(color: Colors.white, fontSize: 13),
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          fillColor: const Color(0xff1c4969),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                          isDense: true,
                        ),
                        maxLines: 4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xff1c4969), borderRadius: BorderRadius.all(Radius.circular(90))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        child: Row(
                          children: const [
                            Icon(Icons.arrow_back_ios, color: Colors.white),
                            SizedBox(width: 10),
                            Text("Retour", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (_publishing) return;
                      setState(() => _publishing = true);

                      String? id = await storage.read(key: "id");
                      final node = GUserWhereBuilder()..id = id;
                      final link = GUserConnectWhereBuilder()..node = node;

                      final List<String> files = [];

                      for (var img in widget.imageFileList) {
                        final bytes = img.readAsBytesSync();
                        String base64Image = "data:image/png;base64," + base64Encode(bytes);

                        final uploadReq = GUploadFilesReq(
                          (b) => b
                            ..vars.files.add(base64Image)
                            ..vars.type = "post",
                        );

                        final file = await client.request(uploadReq).firstWhere((response) => response.dataSource != DataSource.Optimistic);
                        files.add(file.data!.uploadFiles.first);

                        print("New file");
                      }

                      final createPostReq = GCreatePostReq((b) {
                        b.vars.post.add(GPostCreateInput((b) {
                          if (widget.track != null) b.music = widget.track!.id;
                          b.creator.connect.where = link;
                          b.description = _postField.text;
                          b.media.addAll(files);
                        }));
                      });

                      print("Sending post !");
                      final resp = await client.request(createPostReq).firstWhere((response) => response.dataSource != DataSource.Optimistic);

                      if (!resp.hasErrors) {
                        //_audioManager.audioPlayer.stop();
                        Navigator.of(context)
                          ..pop()
                          ..pop();
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xff1c4969), borderRadius: BorderRadius.all(Radius.circular(90))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        child: Row(
                          children: [
                            Text(_publishing ? "En cours..." : "Publier", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            SizedBox(width: 10),
                            Icon(Icons.send, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
