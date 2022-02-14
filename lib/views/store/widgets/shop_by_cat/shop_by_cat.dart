import 'package:app/views/store/widgets/shop_by_cat/category_card.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final List<Map<String, String>> cats;

  const Category({Key key, this.cats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120,
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
    for (Map<String, String> cat in cats) {
      priceWidgets.add(CategoryCard(
        image: cat["catImg"],
        text: cat["catText"],
      ));
      priceWidgets.add(const SizedBox(width: 10));
    }
    return priceWidgets;
  }
}
