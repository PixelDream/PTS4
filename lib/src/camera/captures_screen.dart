import 'dart:convert';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:lottie/lottie.dart';
import 'package:socialnetwork/graphql/create_story.req.gql.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart';
import 'package:socialnetwork/graphql/upload_files.req.gql.dart';
import 'package:socialnetwork/src/music/MusicModal.dart';
import 'package:socialnetwork/src/transition/slide_right_transition.dart';
import 'package:spotify/spotify.dart' as S;

import '../feed/post/create_post.dart';
import '../utils/AudioManager.dart';

class CapturesScreen extends StatefulWidget {
  final List<File> imageFileList;
  final bool post;

  const CapturesScreen({Key? key, required this.imageFileList, this.post = false}) : super(key: key);

  @override
  _CapturesScreenState createState() => _CapturesScreenState();
}

class _CapturesScreenState extends State<CapturesScreen> with SingleTickerProviderStateMixin {
  S.Track? _track;
  bool _publishing = false;

  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    const storage = FlutterSecureStorage();
    final Size size = MediaQuery.of(context).size;
    final AudioManager _audioManager = GetIt.I<AudioManager>();
    final Client client = GetIt.I<Client>();

    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff13334C),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30, top: 40, bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black.withOpacity(0.3)),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (_track != null) {
                      setState(() {
                        _track = null;
                      });
                      _audioManager.audioPlayer.stop();
                      return;
                    }
                    showModalBottomSheet(
                      context: context,
                      enableDrag: true,
                      isScrollControlled: true,
                      backgroundColor: Color(0xff13334C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      builder: (context) {
                        return MusicModal();
                      },
                    ).then((selectedTrack) {
                      _audioManager.audioPlayer.stop();
                      if (selectedTrack == null) return;
                      setState(() {
                        _track = selectedTrack;
                      });
                      _audioManager.audioPlayer
                        ..setReleaseMode(ReleaseMode.LOOP)
                        ..play(_track!.previewUrl!);
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black.withOpacity(0.3)),
                    child: Icon(
                      _track == null ? Icons.music_note : Icons.music_off,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
              child: CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                  height: size.height,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  autoPlay: false,
                  pauseAutoPlayInFiniteScroll: true,
                  pauseAutoPlayOnTouch: true,
                  disableCenter: true,
                  onPageChanged: (index, reason) {
                    setState(() => _current = index);
                  },
                ),
                items: widget.imageFileList.map((img) => Image.file(img, fit: BoxFit.cover, width: size.width)).toList(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imageFileList.map((entry) {
              return Container(
                width: 10,
                height: 10,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == widget.imageFileList.indexOf(entry) ? Colors.white.withOpacity(0.85) : Colors.grey.withOpacity(0.85),
                ),
              );
            }).toList(),
          ),
          SizedBox(
            width: size.width,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: _track != null ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
                children: [
                  if (_track != null)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 5),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  imageUrl: _track!.album!.images!.first.url!,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => CircularProgressIndicator(),
                                  errorWidget: (context, url, error) => Icon(Icons.error),
                                ),
                              ),
                              Lottie.network("https://assets1.lottiefiles.com/packages/lf20_exQVSY.json"),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(_track!.name!, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14)),
                            SizedBox(height: 5),
                            Text(
                              _track!.artists!.map((e) => e.name).join(" - "),
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 9),
                            ),
                          ],
                        ),
                      ],
                    ),
                  GestureDetector(
                    onTap: () async {
                      if (widget.post) {
                        Navigator.of(context).push(SlideRightRoute(widget: CreatePost(imageFileList: widget.imageFileList, track: _track)));

                        return;
                      }

                      if (_publishing) return;
                      setState(() => _publishing = true);

                      String? id = await storage.read(key: "id");
                      final node = GUserWhereBuilder()..id = id;
                      final link = GUserConnectWhereBuilder()..node = node;

                      final bytes = widget.imageFileList.first.readAsBytesSync();
                      String base64Image = "data:image/png;base64," + base64Encode(bytes);

                      final uploadReq = GUploadFilesReq(
                        (b) => b
                          ..vars.files.add(base64Image)
                          ..vars.type = "story",
                      );

                      final files = await client.request(uploadReq).firstWhere((response) => response.dataSource != DataSource.Optimistic);

                      final Story = GStoryCreateInput((b) {
                        if (_track != null) b.music = _track!.id;
                        b.creator.connect.where = link;
                        b.media = files.data!.uploadFiles.first;
                      });

                      final createReviewReq = GCreateStoriesReq((b) => b.vars.story.add(Story));

                      final resp = await client.request(createReviewReq).firstWhere((response) => response.dataSource != DataSource.Optimistic);

                      if (!resp.hasErrors) {
                        _audioManager.audioPlayer.stop();
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
                            widget.post
                                ? Text("Suivant", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                                : Text(_publishing ? "En cours..." : "Publier", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
