import 'package:fb_app/constants.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
    @required TextEditingController searchController,
  })  : _searchController = searchController,
        super(key: key);

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration:
          BoxDecoration(color: grey, borderRadius: BorderRadius.circular(15)),
      child: TextField(
        cursorColor: black,
        controller: _searchController,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: black.withOpacity(0.5),
          ),
          hintText: "Search",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
