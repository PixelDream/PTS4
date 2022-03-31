import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:socialnetwork/src/music/add_music_item.dart';
import 'package:spotify/spotify.dart';

import '../utils/SpotifyManager.dart';

class AddMusic extends StatefulWidget {
  const AddMusic({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AddMusicState();
  }
}

class AddMusicState extends State<AddMusic> with SingleTickerProviderStateMixin {
  final SpotifyManager musicManager = GetIt.I<SpotifyManager>();

  final _formKey = GlobalKey<FormState>();
  final _searchField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff13334C),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 10,
                right: 10,
              ),
              child: Row(
                children: <Widget>[
                  IconButton(
                    splashRadius: 0.5,
                    icon: Icon(
                      Icons.close,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Form(
                      key: _formKey,
                      child: Focus(
                        child: TextFormField(
                          controller: _searchField,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Rechercher une musique",
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
                                Icons.search,
                                color: Colors.white, //Color(0xffFD5F00),
                              ),
                              padding: EdgeInsets.all(0),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FutureBuilder<List<Track>>(
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
                              onTap: () => setState(() {}),
                              child: AddMusicItem(
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
            ),
          ]),
        ),
      ),
    );
  }

  Future<List<Track>> _future() {
    return _searchField.text != "" ? musicManager.searchTracks(_searchField.text) : musicManager.searchTracks("Dance Monkey");
  }
}
