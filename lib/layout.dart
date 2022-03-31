import 'package:flutter/material.dart';
import 'package:socialnetwork/src/camera/camera_page.dart';
import 'package:socialnetwork/src/chat/chat_manager.dart';
import 'package:socialnetwork/src/feed/Feed.dart';
import 'package:socialnetwork/src/map.dart';
import 'package:socialnetwork/src/music/AddMusic.dart';
import 'package:socialnetwork/src/profile/profile.dart';
import 'package:socialnetwork/src/transition/slide_down_transition.dart';
import 'package:socialnetwork/src/utils/SaveData.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends State<Layout> with SingleTickerProviderStateMixin {
  final ScrollController _controller = ScrollController();

  late AnimationController animationController;
  late Animation degOneTranslationAnimation, degTwoTranslationAnimation, degThreeTranslationAnimation;
  late Animation rotationAnimation;

  @override
  void initState() {
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 250));

    degOneTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0, end: 1.2), weight: 75.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.2, end: 1.0), weight: 25.0),
    ]).animate(animationController);

    degTwoTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0, end: 1.4), weight: 55.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.4, end: 1.0), weight: 45.0),
    ]).animate(animationController);

    degThreeTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0, end: 1.75), weight: 35.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.75, end: 1.0), weight: 65.0),
    ]).animate(animationController);

    rotationAnimation = Tween<double>(begin: 180.0, end: 0.0).animate(CurvedAnimation(parent: animationController, curve: Curves.easeOut));

    super.initState();

    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    _controller.dispose();
    super.dispose();
  }

  Widget _navBarWidget = Container(
    height: 80,
    decoration: BoxDecoration(color: Color(0xff13334C)),
    alignment: Alignment.center,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
      child: TextField(
        style: TextStyle(color: Colors.white, fontSize: 15),
        decoration: InputDecoration(
          hintText: "Rechercher",
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xbfffffff),
          ),
          hintStyle: TextStyle(color: Color(0xbfffffff), fontSize: 15),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          fillColor: Color(0xff1c4969),
          contentPadding: EdgeInsets.symmetric(horizontal: 15),
        ),
      ),
    ),
  );

  int currentIndex = 0;

  void _setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              _getChildByIndex(),
              Positioned(
                bottom: 0,
                left: 0,
                child: SizedBox(
                  width: size.width,
                  height: 180,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Stack(
                          children: [
                            CustomPaint(
                              size: Size(size.width, 65),
                              painter: NavCustomPainter(),
                            ),
                            SizedBox(
                              width: size.width,
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.home,
                                      color: currentIndex == 0 ? Color(0xffFD5F00) : Colors.white,
                                    ),
                                    onPressed: () {
                                      _setBottomBarIndex(0);
                                    },
                                    splashColor: Colors.white,
                                    iconSize: 30,
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.location_on,
                                      color: currentIndex == 1 ? Color(0xffFD5F00) : Colors.white,
                                    ),
                                    onPressed: () {
                                      _setBottomBarIndex(1);
                                    },
                                    iconSize: 30,
                                  ),
                                  Container(
                                    width: size.width * 0.20,
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.chat_bubble,
                                      color: currentIndex == 2 ? Color(0xffFD5F00) : Colors.white,
                                    ),
                                    onPressed: () {
                                      _setBottomBarIndex(2);
                                    },
                                    iconSize: 30,
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.account_circle,
                                      color: currentIndex == 3 ? Color(0xffFD5F00) : Colors.white,
                                    ),
                                    onPressed: () {
                                      _setBottomBarIndex(3);
                                    },
                                    iconSize: 30,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        right: 0,
                        left: 0,
                        child: Center(
                          child: Stack(
                            children: [
                              Positioned(
                                child: Stack(
                                  alignment: AlignmentDirectional.bottomCenter,
                                  children: <Widget>[
                                    IgnorePointer(
                                      child: Container(
                                        color: Colors.transparent,
                                        height: 180.0,
                                        width: 220.0,
                                      ),
                                    ),
                                    Transform.translate(
                                      offset: Offset.fromDirection(getRadiansFromDegree(320), degOneTranslationAnimation.value * 100),
                                      child: Transform(
                                        transform: Matrix4.rotationZ(0)..scale(degOneTranslationAnimation.value),
                                        alignment: Alignment.center,
                                        child: Container(
                                          decoration: BoxDecoration(color: Color(0xff1c4969), shape: BoxShape.circle),
                                          width: 50,
                                          height: 50,
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.article,
                                              color: Colors.white,
                                            ),
                                            enableFeedback: true,
                                            visualDensity: VisualDensity.comfortable,
                                            onPressed: () {
                                              Navigator.of(context).push(SlideBottomRoute(widget: CameraPage(post: true)));
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    Transform.translate(
                                      offset: Offset.fromDirection(getRadiansFromDegree(270), degTwoTranslationAnimation.value * 100 + 20),
                                      child: Transform(
                                        transform: Matrix4.rotationZ(0)..scale(degTwoTranslationAnimation.value),
                                        alignment: Alignment.center,
                                        child: Container(
                                          decoration: BoxDecoration(color: Color(0xff1c4969), shape: BoxShape.circle),
                                          width: 50,
                                          height: 50,
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.camera_alt,
                                              color: Colors.white,
                                            ),
                                            enableFeedback: true,
                                            visualDensity: VisualDensity.comfortable,
                                            onPressed: () {
                                              Navigator.of(context).push(SlideBottomRoute(widget: CameraPage()));
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    Transform.translate(
                                      offset: Offset.fromDirection(getRadiansFromDegree(220), degOneTranslationAnimation.value * 100),
                                      child: Transform(
                                        transform: Matrix4.rotationZ(0)..scale(degOneTranslationAnimation.value),
                                        alignment: Alignment.center,
                                        child: Container(
                                          decoration: BoxDecoration(color: Color(0xff1c4969), shape: BoxShape.circle),
                                          width: 50,
                                          height: 50,
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.music_note,
                                              color: Colors.white,
                                            ),
                                            enableFeedback: true,
                                            visualDensity: VisualDensity.comfortable,
                                            onPressed: () {
                                              Navigator.of(context).push(SlideBottomRoute(widget: AddMusic()));
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    Transform(
                                      transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation.value)),
                                      alignment: Alignment.center,
                                      child: Container(
                                        decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                                        width: 60,
                                        height: 60,
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          enableFeedback: true,
                                          onPressed: () {
                                            if (animationController.isCompleted) {
                                              animationController.reverse();
                                            } else {
                                              animationController.forward();
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getChildByIndex() {
    switch (currentIndex) {
      case 1:
        return CustomMarker();
      case 2:
        return ChatManager();
      case 3:
        return Profile(userId: SaveData.id);
      default:
        return SingleChildScrollView(
          child: Column(
            children: [
              AnimatedSwitcher(
                switchInCurve: Curves.easeInCubic,
                duration: Duration(seconds: 0),
                reverseDuration: Duration(seconds: 0),
                child: _navBarWidget,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 0),
                child: Feed(controller: _controller, callback: () => _updateNavWidget()),
              ),
            ],
          ),
        );
    }
  }

  double tempLast = 0;

  _updateNavWidget() {
    final double pixels = _controller.position.pixels;

    if ((pixels - tempLast).abs() > 200) {
      if (pixels.round() < tempLast.round()) {
        setState(() {
          _navBarWidget = _inputSearch();
        });
      } else {
        setState(() {
          _navBarWidget = GestureDetector(
            onTap: () => _controller.position.animateTo(0, duration: Duration(seconds: 1), curve: Curves.ease),
            child: Container(
              height: 60,
              decoration: BoxDecoration(color: Color(0xff13334C)),
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
                child: Text(
                  "Music Party",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          );
        });
      }
    }
    tempLast = pixels;
  }

  Widget _inputSearch() {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Color(0xff13334C)),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
        child: TextField(
          style: TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
            hintText: "Rechercher",
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xbfffffff),
            ),
            hintStyle: TextStyle(color: Color(0xbfffffff), fontSize: 15),
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
            fillColor: Color(0xff1c4969),
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
          ),
        ),
      ),
    );
  }
}

class NavCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Color(0xff13334C)
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, size.height * 0.2027027);
    path.cubicTo(0, size.height * 0.09075311, size.width * 0.01569096, 0, size.width * 0.03504673, 0);
    path.lineTo(size.width * 0.9649533, 0);
    path.cubicTo(size.width * 0.9843084, 0, size.width, size.height * 0.09075311, size.width, size.height * 0.2027027);
    path.lineTo(size.width, size.height * 0.8648649);
    path.cubicTo(size.width, size.height * 0.9394973, size.width * 0.9895397, size.height, size.width * 0.9766355, size.height);
    path.lineTo(size.width * 0.02336449, size.height);

    path.cubicTo(size.width * 0.01046063, size.height, 0, size.height * 0.9394973, 0, size.height * 0.8648649);
    path.lineTo(0, size.height * 0.2027027);

    path.moveTo(size.width / 2 - 60, size.height - 65);

    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 15);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
