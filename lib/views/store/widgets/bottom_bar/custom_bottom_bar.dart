import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key key}) : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  double iconSize = 35;
  Color iconColor = Color.fromRGBO(158, 158, 158, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(229, 229, 227, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.person, size: iconSize, color: iconColor),
          Container(
            width: iconSize - 5,
            height: iconSize - 5,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/heart.png"))),
          ),
          Container(
            width: iconSize + 5,
            height: iconSize + 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(47, 98, 180, 1),
            ),
            child: Icon(Icons.add, size: iconSize, color: Colors.white),
          ),
          Icon(Icons.messenger, size: iconSize - 3, color: iconColor),
          Icon(Icons.home, size: iconSize, color: iconColor)
        ],
      ),
    );
  }
}
