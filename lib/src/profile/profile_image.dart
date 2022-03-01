import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _itemCount = 25;

    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: 85),
        child: GridView.builder(
          primary: false,
          padding: const EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 100,
          ),
          itemCount: _itemCount,
          itemBuilder: (BuildContext constext, int index) => _imageItem(),
        ),
      ),
    );
  }

  Widget _imageItem() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        "assets/images/user.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
