import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:spotify/spotify.dart';

import '../utils/SpotifyManager.dart';
import 'camera_music_item.dart';

class CameraMusicList extends StatefulWidget {
  final TextEditingController? searchField;
  final Function(Track) selected;

  const CameraMusicList({Key? key, this.searchField, required this.selected}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CameraMusicListState();
  }
}

class _CameraMusicListState extends State<CameraMusicList> {
  final SpotifyManager musicManager = GetIt.I<SpotifyManager>();
  Timer? _debounce;

  @override
  void initState() {
    widget.searchField!.addListener(() {
      if (widget.searchField?.text != "") {
        _onSearchChanged();
      }
    });

    super.initState();
  }

  _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 650), () => _future());
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Track>>(
      future: _future(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(
            'There was an error :(',
          );
        } else if (snapshot.hasData) {
          List<Track> item = snapshot.data!;
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 10),
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: item.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 5),
                    child: GestureDetector(
                      onTap: () => setState(() {
                        widget.selected(item[index]);
                      }),
                      child: CameraMusicItem(
                        image: item[index].album!.images!.first.url!,
                        songName: item[index].name!,
                        artist: item[index].artists!.map((e) => e.name).join(" - "),
                        trackSound: item[index].previewUrl!,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        } else {
          return Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [CircularProgressIndicator()],
            ),
          );
        }
      },
    );
  }

  Future<List<Track>> _future() {
    return widget.searchField!.text != "" ? musicManager.searchTracks(widget.searchField!.text) : musicManager.searchTracks("Dance Monkey");
  }
}
