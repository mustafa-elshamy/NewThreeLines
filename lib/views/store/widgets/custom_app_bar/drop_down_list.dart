import 'package:flutter/material.dart';

class DropDownList extends StatelessWidget {
  String initVal;
  final List<String> values;
  final Function setState;

  DropDownList({Key key, this.initVal, this.values, this.setState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Color.fromRGBO(240, 244, 255, 1),
      ),
      child: DropdownButton(
          value: initVal,
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.black,
          ),
          style: TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
          underline: Container(),
          onChanged: (String newValue) {
            initVal = newValue;
            setState();
          },
          items: values.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList()),
    );
  }
}
