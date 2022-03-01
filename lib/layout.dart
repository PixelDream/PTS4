import 'package:flutter/material.dart';
import 'package:socialnetwork/src/Profile/profile.dart';
import 'package:socialnetwork/src/feed/post/posts_list.dart';
import 'package:socialnetwork/src/map.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends State<Layout> {
  final ScrollController _controller = ScrollController();

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
                  height: 80,
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      CustomPaint(
                        size: Size(size.width, 80),
                        painter: NavCustomPainter(),
                      ),
                      Center(
                        heightFactor: 0.65,
                        child: FloatingActionButton(backgroundColor: Color(0xffFD5F00), child: Icon(Icons.add), elevation: 0.1, onPressed: () {}),
                      ),
                      SizedBox(
                        width: size.width,
                        height: 80,
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
                      )
                    ],
                  ),
                ),
              )
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
      case 3:
        return Profile();
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
                child: PostsList(controller: _controller, callback: () => _updateNavWidget()),
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

//Copy this CustomPainter code to the Bottom of the File
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

    path.moveTo(size.width / 2 - 60, size.height - 80);

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
