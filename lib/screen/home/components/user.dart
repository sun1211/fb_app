import 'package:fb_app/constants.dart';
import 'package:fb_app/models/data.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  final UserStory userStories;
  const User({
    Key key,
    this.userStories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: <Widget>[
          Container(
            width: 75,
            height: 75,
            child: Stack(
              children: <Widget>[
                userStories.story
                    ? Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: blue_story, width: 3)),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(userStories.img),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      )
                    : Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(userStories.img),
                                fit: BoxFit.cover)),
                      ),
                userStories.online
                    ? Positioned(
                        top: 48,
                        left: 52,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: online,
                              shape: BoxShape.circle,
                              border: Border.all(color: white, width: 3)),
                        ),
                      )
                    : Container()
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 75,
            child: Align(
                child: Text(
              userStories.name,
              overflow: TextOverflow.ellipsis,
            )),
          )
        ],
      ),
    );
  }
}
