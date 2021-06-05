import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchedItemsPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(
        height: 30,
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.4),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Container(
              child: InkWell(
                onTap: (){},
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width*0.70,
              color: Colors.grey.shade200,

              child: TextField(
                //controller: myController,
                // onChanged: (name){},
                // onEditingComplete: (){
                //
                // },


                decoration: InputDecoration(


                    hintStyle: TextStyle(),

                    border: InputBorder.none),
              ),
            ),

            Container(
              child: IconButton(
                //iconSize: ,
                icon: Icon(Icons.search_rounded),
                onPressed: (){},


              ),
            ),
          ],),
      ),

      SizedBox(height: 20,),
      DefaultTabController(
          length: 3,
      child: Expanded(
        child: Column(
          children: [
            TabBar(
              indicatorColor: Colors.red,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.redAccent,
              labelPadding: EdgeInsets.symmetric(horizontal: 10),
              tabs: [
                Tab(text: "Tops"),
                Tab(text: "Users"),
                Tab(text: "HashTags")
              ],),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height*0.6,
              child: TabBarView(
                children: [
                  Center(child: Text("Hello")),
                  Center(child: Text("World")),
                  Center(child: Text("Welcome")),

                ],
              ),
            ),
          ],
        ),
      ),
      ),

      ]
    ),
    );






}
}
