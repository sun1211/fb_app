import 'package:fb_app/constants.dart';
import 'package:fb_app/models/data.dart';
import 'package:flutter/material.dart';

import 'user.dart';

class ListUsers extends StatelessWidget {
  const ListUsers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Column(
              children: <Widget>[
                Container(
                  width: 70,
                  height: 70,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: grey),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 33,
                      color: black.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 75,
                  child: Align(
                      child: Text(
                    'Your Story',
                    overflow: TextOverflow.ellipsis,
                  )),
                )
              ],
            ),
          ),
          Row(
              children: List.generate(listUserStories.length, (index) {
            return User(
              userStories: listUserStories[index],
            );
          }))
        ],
      ),
    );
  }
}
