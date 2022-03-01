import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef ControllerCallback = void Function();

class StoryInput extends StatefulWidget {
  const StoryInput({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StoryInputState();
  }
}

class StoryInputState extends State<StoryInput> {
  final _formKey = GlobalKey<FormState>();
  final _storyField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: Color(0xff13334C),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Form(
              key: _formKey,
              child: SizedBox(
                width: 340,
                child: TextFormField(
                  controller: _storyField,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Envoyer un message",
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
                        Icons.send,
                        color: Colors.white, //Color(0xffFD5F00),
                      ),
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
