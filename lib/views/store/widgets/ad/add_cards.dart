import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Ads extends StatelessWidget {
  final int length;

  Ads({this.length});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: _generateGridCards(length, context),
      ),
    );
  }

  List<Widget> _generateGridCards(int length, BuildContext context) {
    List<Widget> cards = [];
    Color orangeColor = Color.fromRGBO(206, 152, 3, 1);
    for (int i = 0; i < length; i++) {
      cards.add(Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.only(left: 6, right: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mercedes C180",
                    style: TextStyle(
                        color: orangeColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 12),
                  Container(
                    child: SizedBox(
                      height: 30,
                      width: 200,
                      child: Center(
                        child: Text(
                          "535,000",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 0.5,
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 0.5,
                        )),
                    child: SizedBox(
                      height: 30,
                      width: 200,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.black54,
                              size: 20,
                            ),
                            Text(
                              "القاهرة - مدينة نصر",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w900),
                            ),
                            Container(
                              height: 20,
                              child: Image(
                                image: AssetImage("assets/egypt.png"),
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "السبت، 8 يناير",
                    style: TextStyle(
                        color: orangeColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              SizedBox(
                height: 140,
                width: MediaQuery.of(context).size.width * 0.4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/car_ad.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
      cards.add(SizedBox(height: 10));
    }
    return cards;
  }
}
