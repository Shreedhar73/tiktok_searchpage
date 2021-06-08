import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
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

                  SizedBox(width: MediaQuery.of(context).size.width*0.03),

                  Container(
                    child: Text("Settings",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                ],

              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Account",style: TextStyle(fontSize: 20, color: Colors.black87),),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.account_circle_sharp, color: Colors.black38,
                    size: 30,),
                    SizedBox(width: 6,),

                    Text("Account ", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.65,),
                    Icon(Icons.arrow_forward_ios_rounded)

                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.privacy_tip_sharp, color: Colors.black38,
                      size: 30,),
                    SizedBox(width: 8,),

                    Text("Privacy ", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.67,),
                    Icon(Icons.arrow_forward_ios_rounded)

                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("General",style: TextStyle(fontSize: 20, color: Colors.black87),),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.notification_important_rounded, color: Colors.black38,
                      size: 30,),
                    SizedBox(width: 8,),

                    Text("Notifications ", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.58,),
                    Icon(Icons.arrow_forward_ios_rounded)

                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.text_fields, color: Colors.black38,
                      size: 30,),
                    SizedBox(width: 8,),

                    Text("Language ", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.63,),
                    Icon(Icons.arrow_forward_ios_rounded)

                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.cleaning_services_sharp, color: Colors.black38,
                      size: 30,),
                    SizedBox(width: 8,),

                    Text("Clean Storage ", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.55,),
                    Icon(Icons.arrow_forward_ios_rounded)

                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.video_call_rounded, color: Colors.black38,
                      size: 30,),
                    SizedBox(width: 8,),

                    Text("Video Quality ", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.56,),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("About",style: TextStyle(fontSize: 20, color: Colors.black87),),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.file_copy_rounded, color: Colors.black38,
                      size: 30,),
                    SizedBox(width: 8,),

                    Text("Legal And Policies ", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.46,),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.help_rounded, color: Colors.black38,
                      size: 30,),
                    SizedBox(width: 8,),

                    Text("Help and Feedback ", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.45,),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.info_outline, color: Colors.black38,
                      size: 30,),
                    SizedBox(width: 8,),

                    Text("About Us ", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.63,),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
            ),
            Divider(height: 20,
            thickness: 20,),
            InkWell(
              onTap: (){},
              child: Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.switch_account, color: Colors.black38,
                      size: 30,),
                    SizedBox(width: 12,),
                    Text("Switch Account ", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.50,),
                    Icon(Icons.arrow_forward_ios_rounded)

                  ],
                ),
              ),
            ),
            Divider(height: 20,
              thickness: 20,),
            InkWell(
              onTap: (){},
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.logout, color: Colors.red,
                      size: 38,),
                    SizedBox(width: 12,),
                    Text("Log Out ", style: TextStyle(color: Colors.redAccent, fontSize: 22, fontWeight: FontWeight.bold),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.60,),
                    Icon(Icons.arrow_forward_ios_rounded)

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
