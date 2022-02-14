import 'package:app/views/store/widgets/shop_by_price/price_card.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  final List<Map<String, String>> prices;

  const Price({Key key, this.prices}) : super(key: key);

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
    for (Map<String, String> price in prices) {
      priceWidgets.add(PriceCard(
        minPrice: price["minPrice"],
        maxPrice: price["maxPrice"],
      ));
      priceWidgets.add(const SizedBox(width: 10, height: 200));
    }
    return priceWidgets;
  }
}
