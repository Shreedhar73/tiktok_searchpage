import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:page_ui/Controllers/userController.dart';
import 'package:page_ui/Models/User.dart';
import 'package:page_ui/Pages/AddVideo.dart';
import 'package:page_ui/Pages/searchPage.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'Pages/SettingPage.dart';
import 'Widgets/Carousel.dart';
import 'Widgets/Trend.dart';
import 'Widgets/listView.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, SizingInformation sizingInformation)
    {
      return Scaffold(
        

        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [



                  SizedBox(height: 45,),

                  Container(
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
                          width: sizingInformation.localWidgetSize.width * 0.74,
                          child: TextField(
                            onTap: () {
                              Get.to(() => searchPage());
                            },
                            decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(),
                                prefixIcon: Icon(Icons.search,
                                  color: Colors.black,),

                                border: InputBorder.none),
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.qr_code_rounded,
                            size: 30,
                          ),
                        ),
                        Container(
                          child: IconButton(
                            onPressed: (){
                              Get.to(SettingPage());
                            },
                            icon: Icon(Icons.settings,
                            size: 30,
                            color: Colors.black87,),
                          ),
                        )
                      ],
                    ),


                  ),

                  SizedBox(
                    height: 15,
                  ),
                  //method call for Carousel
                  carousel(sizingInformation),

                  SizedBox(height: 15,),

                  //method call for trends
                  buildTrend(sizingInformation,context,
                      title: "InvisibleMeal",
                      views: "155.6m",
                      description: "Trending HashTag"),

                  SizedBox(height: 15,),
                  //method call for list View
                  buildListView(0),

                  SizedBox(height: 15,),

                  buildTrend(sizingInformation,context,
                      title: "BuddhaPurnima",
                      views: "112.5M",
                      description: "Trending HashTag"),

                  SizedBox(height: 15,),

                  buildListView(0),

                  SizedBox(height: 15,),
                  buildTrend(sizingInformation,context,
                      title: "StayHome",
                      views: "115.6M",
                      description: "Trending HashTag"),

                  SizedBox(height: 10),

                  buildListView(0),



                ],
              ),

            ),
          ),
        ),
        floatingActionButton:  FloatingActionButton.extended(onPressed: (){
          Get.to(AddVideoPage());
        },

          label: Text("Post"),
          icon: Icon(Icons.add_a_photo_outlined),
          backgroundColor: Colors.pinkAccent.shade200,
          focusColor: Colors.purple.shade200,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,



      );




  },
    );


}
}







