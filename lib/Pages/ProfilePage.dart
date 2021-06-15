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
    return FutureBuilder<Profile>(
        future: ApiServices.getProfile(userId),
        builder: (context, snapshot) {
          //print("Hii");
          if(snapshot.hasData){
            final profiles = snapshot.data;



           return Scaffold(
             appBar: AppBar(
               backgroundColor: Colors.white,
               elevation: 1,
               title: Text(
                 profiles.name,
                 style: TextStyle(color: Colors.black),
               ),
               centerTitle: true,
               iconTheme: IconThemeData(color: Colors.black),
               actions: [
                 Padding(
                   padding: const EdgeInsets.fromLTRB(1.0, 0, 1, 0),
                   child: Icon(
                     Icons.notifications_none_outlined,
                     size: 22,
                     color: Colors.black87,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(8.0, 0, 18, 0),
                   child: Icon(
                     Icons.more_vert,
                     size: 22,
                     color: Colors.black87,
                   ),
                 ),
               ],
             ),
             body: DefaultTabController(
                     length:2 ,
                     child: NestedScrollView(

                       //scrollDirection: Axis.vertical,
                       headerSliverBuilder: (context, value){
                         return[
                           SliverToBoxAdapter(
                             child: Container(
                               child: Column(
                                 children: [
                                   SizedBox(height: 8,),
                                   Container(
                                     child: Center(
                                       child: CircleAvatar(
                                         radius: 50,
                                         backgroundColor: Colors.white60,
                                         //backgroundImage: NetworkImage(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                                         child: ClipOval(
                                           //clipBehavior: Clip.hardEdge,

                                           child: Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString(),
                                             errorBuilder: (context, exception, stackTrace){
                                               return Image.network("https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80");
                                             },
                                           ),

                                         ),

                                       ),
                                     ),
                                   ),
                                   Container(
                                     child: Center(
                                       child: Padding(
                                         padding: const EdgeInsets.all(12.0),
                                         child: Text(profiles.email, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                       ),
                                     ),
                                   ),

                                   Container(
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         Padding(
                                           padding: const EdgeInsets.all(12.0),
                                           child: Container(
                                             child: Column(
                                               children: [
                                                 Text(profiles.followings.length.toString(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                                                 Text("Following",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                                               ],
                                             ),
                                           ),
                                         ),
                                         Padding(
                                           padding: const EdgeInsets.all(16.0),
                                           child: Container(
                                             child: Column(
                                               children: [
                                                 Text(profiles.followers.length.toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
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
                                   //SizedBox(height: 10,),
                                   Container(

                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         Container(
                                           child:  Padding(
                                             padding: const EdgeInsets.all(4.0),
                                             child: MaterialButton(
                                               height: 45,

                                               minWidth: MediaQuery.of(context).size.width*0.25,
                                               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                               onPressed: (){},
                                               color: Colors.pink,
                                               child: Text("Follow"),),
                                           ),
                                         ),
                                         Container(
                                           child:  Padding(
                                             padding: const EdgeInsets.all(4.0),
                                             child: MaterialButton(
                                                 height: 45,
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
                                                 height: 45,
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
                                         child: Text(profiles.bio, style: TextStyle(fontSize: 20),),
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
                             ),
                           ),
                           SliverAppBar(
                             automaticallyImplyLeading: false,
                             backgroundColor: Colors.white,
                             pinned: true,
                         title: Column(
                         children: [
                         TabBar(
                         indicatorColor: Colors.pinkAccent.shade100,
                         unselectedLabelColor: Colors.grey,
                         tabs:[
                         Tab(icon: Icon(Icons.fullscreen_exit_rounded, color: Colors.red,)),
                         Tab(icon: Icon(Icons.favorite, color: Colors.red,))

                         ] ),
                         SizedBox(height: 20,),

                         ],
                         ),
                           ),
                         ];
                       },
                       body: TabBarView(

                         children: [
                           GridView.count(
                             scrollDirection: Axis.vertical,
                             crossAxisCount: 3,
                             crossAxisSpacing: 5,
                             mainAxisSpacing: 5,
                             children: [
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),

                             ],

                           ),
                           GridView.count(
                             crossAxisCount: 3,
                             crossAxisSpacing: 5,
                             mainAxisSpacing: 5,
                             children: [
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                               Image.network(ApiServices.baseurl.toString()+profiles.profilePicture.toString()),
                             ],
                           )

                         ],
                       ),

                     )
                 ),



           );
          };
          return Center(child: CircularProgressIndicator());
        }
      );
    
  }
}


