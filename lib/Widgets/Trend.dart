import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

buildTrend(SizingInformation sizingInformation, BuildContext context, {String title, String views, String description}) {
  return Container(


    child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(5)),),
            child: Text("#", style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold,
            ),),

          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: sizingInformation.localWidgetSize.width * 0.80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(title),
                      Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(views)),
                    ],
                  ),
                ),
                Text(description),
              ],
            ),
          ),

        ],
      ),

  );
}