import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:page_ui/Controllers/userController.dart';
import 'package:page_ui/Models/User.dart';
import 'package:page_ui/Pages/searchedItemsPage.dart';
import 'package:page_ui/Services/apiServices.dart';

import 'package:page_ui/main.dart';

class searchPage extends StatelessWidget {
  final myController = TextEditingController();
  @override
  void dispose(){
    myController.dispose();

  }
  final userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(

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
                    onTap: () => Get.back(),
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
                    controller: myController,
                    onChanged: (name){
                      userController.searchUser(name);


                    },
                    onEditingComplete: (){
                      Get.to(SearchedItemsPage(), arguments: myController.text);
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
                    onPressed: (){
                      Get.to(SearchedItemsPage());
                    },


                  ),
                ),
              ],),
            ),

            Flexible(
              child: Obx(()=>ListView.builder(
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
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(user.name),
                                ),





                              ],
                            ),
                          );

                    })
                    ),
            ),



          ],


        ),
      ),
    );
  }
}
