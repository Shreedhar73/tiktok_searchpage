import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_ui/Controllers/userController.dart';
import 'package:page_ui/Pages/ProfilePage.dart';
import 'package:page_ui/Services/apiServices.dart';
import 'package:page_ui/main.dart';

class SearchedItemsPage extends StatelessWidget {
  final String data;
  SearchedItemsPage({this.data});
  final TextEditingController tc = TextEditingController();

  final myController = TextEditingController();
  @override
  void dispose(){
    myController.dispose();

  }
  final userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {


    tc.text = data;

    return Scaffold(
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
          height: 40,
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
                  onTap: (){
                   Get.offAll(() => Homepage());
                  },
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
                    style: TextStyle(color: Colors.black),

                    controller: tc,
                    onChanged: (name){
                     userController.searchUser(name);
                    },


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
          child: SingleChildScrollView(
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
                  height: MediaQuery.of(context).size.height*0.55,
                  child: TabBarView(
                    children: [
                      Obx(()=>ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: userController.userList.length,
                          itemBuilder: (context, index){
                            final user = userController.userList[index];
                            return InkWell(
                              onTap: (){
                                Get.to(() => ProfilePage(user.id));
                              },
                              child: Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(10),
                                child: Row(

                                  children: [
                                    CircleAvatar(
                                      //radius: 20,
                                        backgroundColor: Colors.white60,
                                        child: Image.network(
                                          ApiServices.baseurl.toString()+user.profilePicture.toString(),
                                          errorBuilder: (context, exception, stackTrace){
                                            return Image.network("https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80");
                                          },
                                        )
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(user.name),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text(user.followers.toString() + "  Followers"),
                                        )
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            );

                          })
                      ),
                      Obx(()=>ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: userController.userList.length,
                          itemBuilder: (context, index){
                            final user = userController.userList[index];
                            return Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(10),
                              child: Row(

                                children: [
                                  CircleAvatar(
                                    //radius: 20,
                                      backgroundColor: Colors.white60,
                                      child: Image.network(ApiServices.baseurl.toString()+user.profilePicture.toString(),
                                        errorBuilder: (context, exception, stackTrace){
                                          return Image.network("https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80");
                                        },
                                      )),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(user.name),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(user.followers.toString() + "  Followers"),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );

                          })
                      ),
                      Center(child: Text("Welcome")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        ),

        ]
    ),
      ),
    );
  }
}
