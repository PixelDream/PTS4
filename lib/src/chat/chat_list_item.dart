import 'package:flutter/material.dart';

class chatListItem extends StatefulWidget {
  final String image;
  final String songName;
  final String artist;

  const chatListItem(
      {Key? key,
      required this.image,
      required this.songName,
      required this.artist})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return chatItem();
  }
}

class chatItem extends State<chatListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 5),
      child: Card(
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 2),
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
                              width: 60,
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/user.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(right: 5),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CoolGuy",
                          style: TextStyle(
                              color: Color(0xff13334C),
                              fontWeight: FontWeight.w700,
                              fontSize: 16)),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Hi John, i wanted to know if you were... - 1j",
                          style: TextStyle(
                              color: Color(0xff13334C),
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                      ),
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
}
