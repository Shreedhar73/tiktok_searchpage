import 'package:flutter/material.dart';
import 'package:get/get.dart';



class AddVideoPage extends StatelessWidget {
  final myController = TextEditingController(text: "Want more Likes? Write a description and use a suitable hashtag");
  @override
  void dispose(){
    myController.dispose();

  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          color: Colors.blueGrey.shade100,
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

                   SizedBox(width: MediaQuery.of(context).size.width*0.35),

                    Container(
                      child: Text("Post",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
              Divider(height: 5,
              thickness: 4,),



              //Upload a Video
              Container(
                height: MediaQuery.of(context).size.height*0.3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade50,
                      ),


                      child: IconButton(
                        onPressed: (){
                          Get.back();
                        },
                        hoverColor: Colors.green,
                        focusColor: Colors.green,
                        icon: Icon(Icons.add_a_photo_outlined,
                          size: 50,
                        ),
                      ),
                    ),
                    SizedBox(width: 30),

                    //Description for Video
                    Expanded(
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: null,

                              controller: myController,
                              onChanged: (name){

                                },
                              onEditingComplete: (){},

                              decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.blue),
                                  border: InputBorder.none),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                MaterialButton(
                                  color: Colors.white60,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                    onPressed: (){},
                                    
                                    child: Text("#HashTag")),
                                SizedBox(width: 8,),
                                MaterialButton(
                                  color: Colors.white60,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                    onPressed: (){},
                                    child: Text("@Friends"))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Divider(height: 5, thickness: 4,),
              //Visibility

              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.lock_outlined, color: Colors.black38,),
                    SizedBox(width: 5,),

                    Text("Who can see ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.54,),
                    Text("Public", style: TextStyle(color: Colors.black87),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.03),
                    Icon(Icons.arrow_forward_ios_rounded)

                  ],
                ),
              ),


              Divider(height: 2, thickness: 1,),


             //Permission
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.lock_open_sharp, color: Colors.black38,),
                    SizedBox(width: 5,),
                    Text("Permission", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
                    SizedBox(width: MediaQuery.of(context).size.width*0.69,),
                    Icon(Icons.arrow_forward_ios_rounded)


                  ],
                ),
              ),
              Divider(height: 2, thickness: 1,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                   Icon(Icons.check_circle_outline, color: Colors.red),
                    SizedBox(width: 5,),
                    Text("Save on device"),

                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.30,),
              Container(

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        minWidth: MediaQuery.of(context).size.width*0.2,


                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                        onPressed: (){},
                      color: Colors.white60,
                      child: Text("Drafts"),),

                      MaterialButton(


                        minWidth: MediaQuery.of(context).size.width*0.45,

                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                        onPressed: (){},
                        color: Colors.pink,
                        child: Text("Post"),)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
