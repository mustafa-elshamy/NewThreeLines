import 'package:app/views/store/widgets/shop_by_brand/brand_card.dart';
import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  final List<String> images;

  const Brand({Key key, this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _generatePriceWidgets(),
          ),
        ));
  }

  List<Widget> _generatePriceWidgets() {
    List<Widget> priceWidgets = [];
    for (String image in images) {
      priceWidgets.add(BrandCard(image: image));
      priceWidgets.add(const SizedBox(width: 10));
    }
    return priceWidgets;
  }
}
