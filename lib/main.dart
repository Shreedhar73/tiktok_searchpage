import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:carousel_slider/carousel_slider.dart';


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
                  _Carousel(sizingInformation),

                  SizedBox(height: 15,),

                  //method call for trends
                  _buildTrend(sizingInformation,
                  title: "InvisibleMeal",
                  views: "155.6m",
                  description: "Trending HashTag"),

                  SizedBox(height: 15,),
                  //method call for list View
                  _buildListView(0),

                  SizedBox(height: 15,),

                  _buildTrend(sizingInformation,
                  title: "BuddhaPurnima",
                  views: "112.5M",
                  description: "Trending HashTag"),

                  SizedBox(height: 15,),

                  _buildListView(0),

                  SizedBox(height: 15,),
                   _buildTrend(sizingInformation,
                   title: "StayHome",
                   views: "115.6M",
                   description: "Trending HashTag"),
                  
                  SizedBox(height: 10),
                  
                  _buildListView(0)
                  
                ],
              ),
            ),
          ),
        );
      }
    );



  }
  //method for carousel

  _Carousel(SizingInformation sizingInformation) {
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


//method for Trends
  _buildTrend(SizingInformation sizingInformation, {String title, String views, String description}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
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
              fontSize: 16, fontWeight: FontWeight.bold,
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

  //method for Listview
  _buildListView(index) {

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

  List <String> assetData = [
    "images/2.jpg",
    "images/Bluerooms.jpg",
    "images/HotelHyatt.jpg",
    "images/HotelEverest.jpg"


  ];
}






