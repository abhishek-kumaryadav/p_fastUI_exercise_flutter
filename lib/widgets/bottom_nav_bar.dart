import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Today",
            svgSrc: "assets/icons/calendar.svg",
            press: () {},
            isActive: true,
          ),
          BottomNavItem(
            title: "All Exercises",
            svgSrc: "assets/icons/gym.svg",
            press: () {},
          ),
          BottomNavItem(
            title: "Settings",
            svgSrc: "assets/icons/Settings.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    Key? key,
    required this.svgSrc,
    required this.press,
    required this.title,
    this.isActive = false,
  }) : super(key: key);
  final String svgSrc;
  final VoidCallback press;
  final String title;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgSrc,
              color: isActive ? kActiveIconColor : kTextColor),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
