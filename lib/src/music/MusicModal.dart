import 'package:flutter/material.dart';

import '../camera/camera_music_list.dart';

class MusicModal extends StatefulWidget {
  const MusicModal({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MusicModalState();
  }
}

class MusicModalState extends State<MusicModal> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final _formKey = GlobalKey<FormState>();
    final _searchField = TextEditingController();

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
            return SizedBox(
                width: size.width,
                height: size.height * .70,
                child: DefaultTabController(
                  length: 2,
                  child: Padding(
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
                            SizedBox(width: 10),
                            IconButton(
                              splashRadius: 0.5,
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 30,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      ),
                      TabBar(
                        controller: _tabController,
                        padding: EdgeInsets.only(top: 5),
                        labelPadding: EdgeInsets.only(bottom: 10, top: 20),
                        indicatorColor: Colors.white,
                        tabs: const [
                          Text("À la une"),
                          Text("Mes musiques"),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            Column(
                              children: [
                                CameraMusicList(
                                  searchField: _searchField,
                                  selected: (track) {
                                    Navigator.of(context).pop(track);
                                  },
                                ),
                              ],
                            ),
                            Column(
                              children: const [Text("Mes musiques...", style: TextStyle(color: Colors.white))],
                            )
                          ],
                        ),
                      )
                    ]),
                  ),
                ));
          }),
        ),
      ),
    );
  }
}
