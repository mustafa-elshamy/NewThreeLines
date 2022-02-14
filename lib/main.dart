import 'dart:math';

import 'package:app/views/store/widgets/all_tab.dart';
import 'package:app/views/store/widgets/bottom_bar/custom_bottom_bar.dart';
import 'package:app/views/store/widgets/shop_by_brand/shop_by_brand.dart';
import 'package:app/views/store/widgets/shop_by_cat/shop_by_cat.dart';
import 'package:app/views/store/widgets/shop_by_price/shop_by_price.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'views/store/widgets/custom_app_bar/app_bar.dart';
import 'views/store/widgets/image_swiper/image_swiper.dart';
import 'views/store/widgets/ad/add_cards.dart';
import 'views/store/widgets/widgets.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with TickerProviderStateMixin {
  void setStateFun() => setState(() {});
  int bodyIndex = 0;

  void changeBodyFun(int index) {
    setState(() {
      bodyIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    List<Widget> bodyTabs = [
      AllTab(),
      tempWidget(2),
      tempWidget(3),
      tempWidget(4),
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.grey),
        home: Scaffold(
          appBar: appBar(setStateFun, tabController),
          body: TabBarView(
            controller: tabController,
            children: bodyTabs,
          ),
          bottomNavigationBar: CustomBottomBar(),
        ));
  }

  Widget tempWidget(int index) {
    return Center(
      child: Text(index.toString()),
    );
  }
}
