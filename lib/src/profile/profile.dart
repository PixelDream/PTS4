import 'package:flutter/material.dart';
import 'package:socialnetwork/src/Profile/profile_music_list.dart';
import 'package:socialnetwork/src/profile/profile_image.dart';
import 'package:socialnetwork/src/settings/settings.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ProfileState();
  }
}

class ProfileState extends State<Profile> {
  int currentIndex = 0;

  void _setProfileIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Stack(
          children: [
            CustomPaint(
              size: Size(
                size.width,
                250,
              ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: GestureDetector(
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsPage())),
                },
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 30, left: 50),
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
                                        child: Image.asset(
                                          "assets/images/user.jpg",
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
                              Text("John Doe", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 25)),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  "Web developper, fan of bike",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),
                                ),
                              ),
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
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                children: const <TextSpan>[TextSpan(text: "3", style: TextStyle(fontSize: 25)), TextSpan(text: "\nPublications")]))
                      ],
                    ),
                    SizedBox(
                      width: 23,
                    ),
                    Column(
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                children: const <TextSpan>[TextSpan(text: "908k", style: TextStyle(fontSize: 25)), TextSpan(text: "\nAbonnés")]))
                      ],
                    ),
                    SizedBox(
                      width: 23,
                    ),
                    Column(
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                children: const <TextSpan>[TextSpan(text: "1", style: TextStyle(fontSize: 25)), TextSpan(text: "\nAbonnements")]))
                      ],
                    ),
                  ],
                )
              ],
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
        return ProfileMusicList();
      default:
        return ProfileImage();
    }
  }
}

//Copy this CustomPainter code to the Bottom of the File
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

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff13334C).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
