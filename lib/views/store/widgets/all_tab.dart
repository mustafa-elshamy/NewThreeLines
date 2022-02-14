import 'package:app/views/store/widgets/shop_by_brand/shop_by_brand.dart';
import 'package:app/views/store/widgets/shop_by_cat/shop_by_cat.dart';
import 'package:app/views/store/widgets/shop_by_price/shop_by_price.dart';
import 'package:app/views/store/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'ad/add_cards.dart';
import 'image_swiper/image_swiper.dart';

class AllTab extends StatefulWidget {
  const AllTab({Key key}) : super(key: key);

  @override
  _AllTabState createState() => _AllTabState();
}

class _AllTabState extends State<AllTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ImageSwipper(images: [
          "assets/bmw.jpg",
          "assets/merceds.jpg",
          "assets/iphone.png",
          "assets/mobile-banner.jpg",
        ]),
        titleText("Shop by price"),
        const SizedBox(
          height: 10,
        ),
        Price(
          prices: [
            {"minPrice": "1,499"},
            {"minPrice": "1,500", "maxPrice": "2,999"},
            {"minPrice": "3,000", "maxPrice": "4,999"},
            {"minPrice": "5,500", "maxPrice": "6,999"},
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        titleText("Shop by brand"),
        const SizedBox(
          height: 18,
        ),
        Brand(images: [
          "samsung.png",
          "huawei.png",
          "apple.png",
          "xiaomi.png",
          "oppo.png",
        ]),
        titleText("Shop by category"),
        const SizedBox(
          height: 18,
        ),
        Category(cats: [
          {"catText": "Smartphones", "catImg": "smartphone.png"},
          {"catText": "Tablets", "catImg": "smartphone.png"},
          {"catText": "Covers", "catImg": "smartphone.png"},
          {"catText": "Powerbanks", "catImg": "smartphone.png"},
        ]),
        const SizedBox(
          height: 18,
        ),
        Ads(length: 8)
      ],
    );
  }
}
