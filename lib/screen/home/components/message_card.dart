import 'package:fb_app/constants.dart';
import 'package:fb_app/models/data.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  final Message userMessages;
  final Function press;
  const MessageCard({
    Key key,
    this.userMessages,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Container(
              width: 75,
              height: 75,
              child: Stack(
                children: [
                  userMessages.story
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
                                    image: NetworkImage(
                                      userMessages.img,
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(userMessages.img),
                                  fit: BoxFit.cover)),
                        ),
                  userMessages.online
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
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  userMessages.name,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 135,
                  child: Text(
                    userMessages.message + " - " + userMessages.create,
                    style:
                        TextStyle(fontSize: 15, color: black.withOpacity(0.8)),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
