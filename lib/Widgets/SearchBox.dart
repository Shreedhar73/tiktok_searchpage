import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

buildSearchBox(SizingInformation sizingInformation) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(.4),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 45,
          color: Colors.grey.shade200,
          width: sizingInformation.localWidgetSize.width * 0.80,
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: InputBorder.none),
          ),
        ),
        Container(
          child: Icon(
            Icons.qr_code_rounded,
            size: 30,
          ),
        )
      ],
    ),


  );
}