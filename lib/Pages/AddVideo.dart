import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddVideoPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.arrow_back,color: Colors.black,),
                      onPressed: (){
                        Get.back();
                      },

                    ),
                  ),

                  SizedBox(width: 130,),

                  Container(
                    child: Text("Post",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
            Container(

            ), //POST Box
            Container(),//Who can See
            Container(),//Permission
            Container(),//Drafts and Post button
          ],
        ),
      ),
    );
  }
}
