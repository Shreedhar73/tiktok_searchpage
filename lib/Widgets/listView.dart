import 'package:flutter/material.dart';

//method for Listview
buildListView(index) {
  List <String> assetData = [
    "images/2.jpg",
    "images/Bluerooms.jpg",
    "images/HotelHyatt.jpg",
    "images/HotelEverest.jpg"


  ];

  return Container(
    height: 160,
    child: ListView.builder(

      scrollDirection: Axis.horizontal,
      itemCount: assetData.length,

      itemBuilder: (context, index) {

        return Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              child: Image.asset(assetData[index]),
            )
        );
      },

    ),
  );
}