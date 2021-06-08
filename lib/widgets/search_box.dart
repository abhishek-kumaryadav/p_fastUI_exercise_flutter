import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.5),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          border: InputBorder.none,
          icon: SvgPicture.asset("assets/icons/search.svg"),
        ),
      ),
    );
  }
}
