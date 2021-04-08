import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    leading: Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
                fit: BoxFit.cover)),
      ),
    ),
    title: Text(
      "Chats",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 18),
        child: Icon(
          Icons.edit,
          color: Colors.black,
        ),
      ),
    ],
  );
}
