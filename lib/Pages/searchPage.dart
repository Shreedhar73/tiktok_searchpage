import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:page_ui/Models/User.dart';
import 'package:page_ui/Services/apiServices.dart';

import 'package:page_ui/main.dart';

class searchPage extends StatelessWidget {
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
                  onTap: (){Get.to(Homepage());},
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width*0.80,
                color: Colors.grey.shade200,

                child: TextField(

                  decoration: InputDecoration(


                      hintStyle: TextStyle(),

                      border: InputBorder.none),
                ),
              ),
              Container(
                child: Icon(
                 Icons.clear_rounded,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],),
          ),
          SingleChildScrollView(
            
            child: FutureBuilder<List<User>>(
              future: ApiServices.searchUser(),
              builder: (context, snapshot){
                if(snapshot.hasData){
                  final userx = snapshot.data;
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: userx.length,
                      itemBuilder: (context, index){
                        final user = userx[index];
                        return Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(10),
                          child: Column(

                            children: [
                              Expanded(
                                flex: 0,
                                  child: Text(user.name)),


                            ],
                          ),
                        );

                  });

                  //return Text(snapshot.data.name);
                }
                else if(snapshot.hasError){
                  return Text("${snapshot.error}");
                }
                return CircularProgressIndicator();
              },
            ),
          )


        ],


      ),
    );
  }
}
