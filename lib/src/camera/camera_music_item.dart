import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'PlayButton.dart';

class CameraMusicItem extends StatefulWidget {
  final String image;
  final String songName;
  final String artist;
  final String trackSound;

  const CameraMusicItem({Key? key, required this.image, required this.songName, required this.artist, required this.trackSound}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CameraMusicItemState();
  }
}

class CameraMusicItemState extends State<CameraMusicItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: widget.image,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.songName, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16)),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        widget.artist,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ProgressedPlayButton(url: widget.trackSound)
          ],
        ),
      ),
    );
  }
}
