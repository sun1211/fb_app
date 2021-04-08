import 'package:fb_app/constants.dart';
import 'package:fb_app/models/data.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context, Message message) {
  return AppBar(
    backgroundColor: grey.withOpacity(0.2),
    elevation: 0,
    leading: FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: primary,
        )),
    title: Row(
      children: <Widget>[
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                message.img,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              message.name,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: black),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              message.online ? 'Active now' : 'Offine now',
              style: TextStyle(color: black.withOpacity(0.4), fontSize: 14),
            )
          ],
        )
      ],
    ),
    actions: <Widget>[
      Icon(
        Icons.phone,
        color: primary,
        size: 32,
      ),
      SizedBox(
        width: 15,
      ),
      Icon(
        Icons.video_call,
        color: primary,
        size: 35,
      ),
      SizedBox(
        width: 8,
      ),
      message.online
          ? Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                  color: online,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white38)),
            )
          : Container(),
      SizedBox(
        width: 15,
      ),
    ],
  );
}
