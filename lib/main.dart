import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Widgets/Carousel.dart';
import 'Widgets/Trend.dart';
import 'Widgets/listView.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }


}
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, SizingInformation sizingInformation) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: TextField(


                decoration: InputDecoration(

                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),

                prefixIcon: IconButton(icon: Icon(Icons.search_rounded,

                color: Colors.grey,),
                onPressed: (){},),
                hintText: "Search .. ",
              ),
            ),

            actions: [
              IconButton(icon: Icon(Icons.camera_enhance_outlined, color: Colors.grey,),
                  onPressed: (){})
            ],

          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  //method call for Carousel
                  carousel(sizingInformation),

                  SizedBox(height: 15,),

                  //method call for trends
                  buildTrend(sizingInformation,
                  title: "InvisibleMeal",
                  views: "155.6m",
                  description: "Trending HashTag"),

                  SizedBox(height: 15,),
                  //method call for list View
                  buildListView(0),

                  SizedBox(height: 15,),

                  buildTrend(sizingInformation,
                  title: "BuddhaPurnima",
                  views: "112.5M",
                  description: "Trending HashTag"),

                  SizedBox(height: 15,),

                  buildListView(0),

                  SizedBox(height: 15,),
                   buildTrend(sizingInformation,
                   title: "StayHome",
                   views: "115.6M",
                   description: "Trending HashTag"),
                  
                  SizedBox(height: 10),
                  
                  buildListView(0)
                  
                ],
              ),
            ),
          ),
        );
      }
    );

  }
}






