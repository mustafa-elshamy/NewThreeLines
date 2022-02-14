import 'package:flutter/material.dart';
import 'dart:math';

class LargeCategoryParts extends StatelessWidget {
  int _length;

  LargeCategoryParts(this._length);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: _generateGridCards(_length),
      ),
    );
  }

  List<Widget> _generateGridCards(int length) {
    List<Widget> cards = [];
    for (int i = 0; i < length; i++) {
      cards.add(SizedBox(
        height: 200,
        width: 170,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Color.fromRGBO(249, 249, 247, 1),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/engine.jpg",
                    height: 120,
                    width: 150,
                    fit: BoxFit.scaleDown,
                  ),
                  Center(
                    child: Text("الموتور وأجزائه",
                        style: TextStyle(
                          color: Color.fromRGBO(206, 152, 3, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  SizedBox()
                ],
              ),
            ),
          ),
        ),
      ));
    }
    return cards;
  }
}
