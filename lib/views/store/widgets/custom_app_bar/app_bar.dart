import 'package:app/views/store/widgets/custom_app_bar/drop_down_list.dart';
import 'package:flutter/material.dart';

PreferredSize appBar(Function setStateFun, TabController tabController) {
  String priceDropdownValue = "Price";
  List<String> priceDropdownList = ["Price", "1000", "2000", "3000"];

  String brandDropdownValue = "Brand";
  List<String> brandDropdownList = ["Brand", "BMW", "Audi", "Jeep", "Nissan"];

  String brandCDropdownValue = "Brand Compatibility";
  List<String> brandCDropdownList = ["Brand Compatibility", "1"];

  String typeDropdownValue = "Type";
  List<String> typeDropdownList = ["Type", "Type1", "Type2", "Type3"];

  return PreferredSize(
    preferredSize: Size.fromHeight(150),
    child: Container(
      padding: EdgeInsets.only(top: 42, left: 20, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "0",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Color.fromRGBO(215, 165, 50, 1)),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 37,
                height: 37,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/coin.png"))),
              ),
              const SizedBox(
                width: 8,
              ),
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(12),
                child: Container(
                    width: 37,
                    height: 37,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade200,
                    ),
                    child: const Icon(
                      Icons.engineering,
                      color: Colors.black,
                      size: 27,
                    )),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                  child: Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(12),
                child: TextField(
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      hintText: "ابحث هنا",
                      hintStyle: TextStyle(
                          height: 0.5,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      suffixIcon: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12))),
                ),
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 6,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DropDownList(
                      initVal: priceDropdownValue,
                      values: priceDropdownList,
                      setState: setStateFun),
                  const SizedBox(
                    width: 8,
                  ),
                  DropDownList(
                      initVal: brandDropdownValue,
                      values: brandDropdownList,
                      setState: setStateFun),
                  const SizedBox(
                    width: 8,
                  ),
                  DropDownList(
                      initVal: brandCDropdownValue,
                      values: brandCDropdownList,
                      setState: setStateFun),
                  const SizedBox(
                    width: 8,
                  ),
                  DropDownList(
                      initVal: typeDropdownValue,
                      values: typeDropdownList,
                      setState: setStateFun)
                ],
              )),
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 2,
            ),
          ),
          DefaultTabController(
              length: 4,
              child: TabBar(
                isScrollable: true,
                controller: tabController,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(206, 152, 3, 1)),
                tabs: [
                  createTab("All"),
                  createTab("Consumer Electronics"),
                  createTab("Machinery"),
                  createTab("Apparel"),
                ],
                onTap: (index) {
                  tabController.index = index;
                },
              )),
          const SizedBox(
            height: 2,
          )
        ],
      ),
    ),
  );
}

Widget createTab(String tab) {
  return SizedBox(
      height: 30,
      child: Center(
        child: Text(
          tab,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
        ),
      ));
}
