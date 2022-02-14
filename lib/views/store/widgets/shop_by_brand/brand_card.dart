import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String image;
  final double size = 120;

  const BrandCard({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
            borderRadius: BorderRadius.circular(12),
            elevation: 2,
            child: Container(
              height: size / 2,
              width: size,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(247, 247, 247, 1)),
              child: Center(
                child: Image.asset(
                  "assets/" + image,
                  fit: BoxFit.fitHeight,
                  height: size - 80,
                  width: size - 15,
                ),
              ),
            )),
        const SizedBox(height: 5)
      ],
    );
  }
}
