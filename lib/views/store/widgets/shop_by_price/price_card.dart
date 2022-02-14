import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final String minPrice;
  final String maxPrice;
  final double size = 90;

  const PriceCard({Key key, this.minPrice, this.maxPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          borderRadius: BorderRadius.circular(12),
          elevation: 2,
          child: Container(
            height: size,
            width: size + 10,
            decoration: BoxDecoration(
                color: Color.fromRGBO(229, 239, 215, 1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color.fromRGBO(195, 218, 162, 1))),
            child: Center(
              child: Text(
                maxPrice == null
                    ? "Below\n" + minPrice
                    : "From\n" + minPrice + " - " + maxPrice,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(height: 5)
      ],
    );
  }
}
