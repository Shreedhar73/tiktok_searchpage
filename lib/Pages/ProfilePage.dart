import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:page_ui/Models/Profile.dart';
import 'package:page_ui/Services/apiServices.dart';

class ProfilePage extends StatelessWidget {
  final String userId;
  ProfilePage(this.userId);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Profile>(
        future: ApiServices.getProfile(userId),
        builder: (context, snapshot) {
          print("Hii");

          if(snapshot.hasData){
            final profiles = snapshot.data;

            print(profiles.name);

            return Container(


              height: MediaQuery.of(context).size.height*1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.067,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                    decoration: BoxDecoration(color: Colors.white),
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

                        SizedBox(width: MediaQuery.of(context).size.width*0.2),

                        Container(
                          child: Text(profiles.name,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.2,),

                        Container(
                          child: Icon(Icons.notifications_none_outlined),
                        ),
                        SizedBox(width: 12),
                        Container(child: Icon(Icons.more_vert),),
                      ],

                    ),
                  ),
                  Divider(height: 5, thickness: 3,),
                  SizedBox(height: 20,),

                  Container(
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.blueGrey.withOpacity(0.4),
                        radius: 55,
                        child: Icon(Icons.person, color: Colors.red,size: 80,),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text("@Fallen700", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: Column(
                              children: [
                                Text("224",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                                Text("Following",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: Column(
                              children: [
                                Text("115.5k", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                                Text("Followers",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: Column(
                              children: [
                                Text("5.4M",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                                Text("Likes",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ),
                      ],

                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child:  Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: MaterialButton(
                              minWidth: MediaQuery.of(context).size.width*0.25,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                              onPressed: (){},
                              color: Colors.pink,
                              child: Text("Follow"),),
                          ),
                        ),
                        Container(
                          child:  Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: MaterialButton(
                                minWidth: MediaQuery.of(context).size.width*0.1,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                                onPressed: (){},
                                color: Colors.grey.shade200,

                                child:  Icon(Icons.camera_enhance_outlined)
                            ),
                          ),
                        ),
                        Container(
                          child:  Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: MaterialButton(
                                minWidth: MediaQuery.of(context).size.width*0.1,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                                onPressed: (){},
                                color: Colors.grey.shade200,

                                child:  Icon(Icons.arrow_drop_down)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text("Hello There ! ! ! ! !"),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text("www.youtube.com/fallen700.34456", style: TextStyle(fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),

                ],
              ),
            );
          };
          return Center(child: CircularProgressIndicator());
        }
      ),
    );
  }
}


