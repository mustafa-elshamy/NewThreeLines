import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String text;
  final double size = 100;

  const CategoryCard({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
            borderRadius: BorderRadius.circular(8),
            elevation: 2,
            child: Container(
              height: size,
              width: size,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage("assets/background.png"),
                      fit: BoxFit.contain)),
              child: Center(
                child: Image.asset(
                  "assets/" + image,
                  height: size * 3 / 4,
                  width: size * 3 / 4,
                ),
              ),
            )),
        const SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
