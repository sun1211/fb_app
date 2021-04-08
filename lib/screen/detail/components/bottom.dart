import 'package:fb_app/constants.dart';
import 'package:fb_app/size_config.dart';
import 'package:flutter/material.dart';

Widget getBottom(BuildContext context) {
  TextEditingController _sendMessageController = new TextEditingController();

  return Container(
    height: 80,
    width: double.infinity,
    decoration: BoxDecoration(color: grey.withOpacity(0.2)),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: (SizeConfig.screenWidth - 40) / 2,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.add_circle,
                  size: 35,
                  color: primary,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.camera_alt,
                  size: 35,
                  color: primary,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.photo,
                  size: 35,
                  color: primary,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.keyboard_voice,
                  size: 35,
                  color: primary,
                ),
              ],
            ),
          ),
          Container(
            width: (SizeConfig.screenWidth - 40) / 2,
            child: Row(
              children: [
                Container(
                  width: (SizeConfig.screenWidth - 140) / 2,
                  height: 40,
                  decoration: BoxDecoration(
                      color: grey, borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: TextField(
                      cursorColor: black,
                      controller: _sendMessageController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Aa",
                          suffixIcon: Icon(
                            Icons.face,
                            color: primary,
                            size: 35,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.thumb_up,
                  size: 35,
                  color: primary,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
