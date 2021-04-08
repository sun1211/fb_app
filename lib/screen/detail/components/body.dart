import 'package:fb_app/models/data.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 80),
        children: List.generate(messages.length, (index) {
          return ChatBubble(
              isMe: messages[index]['isMe'],
              messageType: messages[index]['messageType'],
              message: messages[index]['message'],
              profileImg: messages[index]['profileImg']);
        }),
      ),
    );
  }
}
