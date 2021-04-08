import 'package:fb_app/components/search_bar.dart';
import 'package:fb_app/constants.dart';
import 'package:fb_app/models/data.dart';
import 'package:fb_app/screen/home/components/message_card.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'list_user.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = new TextEditingController();
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 15),
        children: [
          SearchBar(searchController: _searchController),
          SizedBox(
            height: 30,
          ),
          ListUsers(),
          SizedBox(
            height: 30,
          ),
          Column(
            children: List.generate(listUserMessages.length, (index) {
              return MessageCard(
                userMessages: listUserMessages[index],
                press: () {},
              );
            }),
          )
        ],
      ),
    );
  }
}
