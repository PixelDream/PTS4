import 'package:flutter/material.dart';

class StoriesList extends StatefulWidget {
  const StoriesList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StoriesListState();
  }
}

class StoriesListState extends State<StoriesList> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 110.0,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) => _storyItem(
          'assets/images/user.jpg',
          "Morgan",
          index > 2 ? false : true,
        ),
      ),
    );
  }

  Widget _storyItem(String image, String fullName, bool active) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 5),
      child: Column(
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: Card(
              elevation: 5,
              borderOnForeground: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                side: active ? BorderSide(color: Color(0xff005792), width: 3) : BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              fullName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
