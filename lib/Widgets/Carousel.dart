import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:responsive_builder/responsive_builder.dart';
//method for carousel

carousel(SizingInformation sizingInformation) {
  return CarouselSlider(
      items: [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                fit: BoxFit.cover,
              )
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://images.unsplash.com/photo-1542382257-80dedb725088?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80"),
                fit: BoxFit.cover,
              )
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://images.unsplash.com/photo-1543857778-c4a1a3e0b2eb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=353&q=80"),
                fit: BoxFit.cover,
              )
          ),
        ),

      ],
      options: CarouselOptions(
        height: 180,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16/9,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 500),
        viewportFraction: 0.8,

      ));
}