import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:socialnetwork/graphql/feed_info.data.gql.dart';
import 'package:socialnetwork/graphql/feed_info.req.gql.dart';
import 'package:socialnetwork/graphql/feed_info.var.gql.dart';
import 'package:socialnetwork/src/profile/profile_music_list.dart';
import 'package:socialnetwork/src/profile/profile_posts.dart';
import 'package:socialnetwork/src/settings/settings.dart';

import '../utils/SaveData.dart';

class Profile extends StatefulWidget {
  final String? userId;

  const Profile({Key? key, this.userId}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<Profile> {
  int currentIndex = 0;

  final Client client = GetIt.I<Client>();

  void _setProfileIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.userId != null) {
      final Size size = MediaQuery.of(context).size;

      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SizedBox(
            height: size.height,
            child: Stack(
              children: [_profileWidget(context)],
            ),
          ),
        ),
      );
    }

    return _profileWidget(context);
  }

  Widget _profileWidget(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Stack(
          children: [
            CustomPaint(
              size: Size(
                size.width,
                270,
              ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
            if (widget.userId == SaveData.id)
              Positioned(
                right: 25,
                top: 25,
                child: GestureDetector(
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsPage())),
                  },
                  behavior: HitTestBehavior.translucent,
                ),
              ),
            Operation(
              client: client,
              operationRequest: GFeedInfoReq((b) {
                b.vars.user.id = widget.userId;
                b.fetchPolicy = FetchPolicy.CacheFirst;
              }),
              builder: (BuildContext context, OperationResponse<GFeedInfoData, GFeedInfoVars>? response, Object? error) {
                if (response!.loading) return Center(child: CircularProgressIndicator());

                if (response.hasErrors) return Text("Error");

                final user = response.data!.users.first;

                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 25, left: 45),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      GestureDetector(
                                        child: SizedBox(
                                          width: 90,
                                          height: 90,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: Image.network(
                                              user.image!,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(user.firstName + " " + user.lastName,
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 25)),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      user.biography!,
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),
                                    ),
                                  ),
                                  if (user.id != SaveData.id)
                                    Padding(
                                      padding: EdgeInsets.only(top: 0),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            print('Pressed');
                                          },
                                          style: ElevatedButton.styleFrom(
                                              primary: const Color(0xffFD5F00),
                                              onPrimary: Colors.white,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
                                              minimumSize: Size(150, 25)),
                                          child: Text(
                                            "S'abonner",
                                            style: TextStyle(fontSize: 12),
                                          )),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(text: user.postsConnection.totalCount.toString(), style: TextStyle(fontSize: 25)),
                                  TextSpan(text: "\nPublications"),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 45,
                        ),
                        Column(
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: const <TextSpan>[
                                  TextSpan(text: "908k", style: TextStyle(fontSize: 25)),
                                  TextSpan(text: "\nAbonnés"),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 45,
                        ),
                        Column(
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(text: user.friendsConnection.totalCount.toString(), style: TextStyle(fontSize: 25)),
                                  TextSpan(text: "\nAbonnements"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.grid_on,
                      color: currentIndex == 0 ? Color(0xffFD5F00) : Colors.black,
                    ),
                    onPressed: () {
                      _setProfileIndex(0);
                    },
                    splashColor: Colors.white,
                    iconSize: 30,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.library_music,
                      color: currentIndex == 1 ? Color(0xffFD5F00) : Colors.black,
                    ),
                    onPressed: () {
                      _setProfileIndex(1);
                    },
                    splashColor: Colors.white,
                    iconSize: 30,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.person_pin,
                      color: currentIndex == 2 ? Color(0xffFD5F00) : Colors.black,
                    ),
                    onPressed: () {
                      _setProfileIndex(2);
                    },
                    splashColor: Colors.white,
                    iconSize: 30,
                  ),
                ],
              ),
            )
          ],
        ),
        _getChildByIndex(),
      ],
    );
  }

  Widget _getChildByIndex() {
    switch (currentIndex) {
      case 1:
        return ProfileMusicList(userId: widget.userId);
      default:
        return ProfileImage(userId: widget.userId);
    }
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * -0.01829250);
    path_0.lineTo(size.width * 0.02172505, size.height * -0.01829268);
    path_0.lineTo(size.width * -0.01401867, size.height * 0);
    path_0.lineTo(0, size.height * 0.9984756);
    path_0.cubicTo(0, size.height * 0.8353659, size.width * 0.1004673, size.height * 0.7621951, size.width * 0.1623832, size.height * 0.7621951);
    path_0.cubicTo(size.width * 0.2242991, size.height * 0.7621951, size.width * 0.8367640, size.height * 0.7638750, size.width * 0.8367640,
        size.height * 0.7638750);
    path_0.cubicTo(size.width * 0.9100467, size.height * 0.7638750, size.width, size.height * 0.6875000, size.width, size.height * 0.5518293);
    path_0.lineTo(size.width, size.height * -0.01829250);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xff13334C).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
