import 'package:http/http.dart' as http;
import 'package:page_ui/Models/Profile.dart';
import 'package:page_ui/Models/User.dart';

class ApiServices{
 // List <String> users = [];


  static var client = http.Client();
  final User user;
  final Profile userid;

  ApiServices(this.user, this.userid);


  static const baseurl = "https://ka-mao.xyz";
  //https://ka-mao.xyz/user/:userid/profile




  static Future <List<User>> searchUser(name) async{
    final String searchUserUrl = "$baseurl/user/search?name=$name";

    var resp = await client.get(searchUserUrl);
    if ( resp.statusCode == 200){
      var jsonString = resp.body;
      return userFromJson(jsonString);
    }
    else{
      return null;
    }
  }

  static Future <Profile> getProfile(userId) async{
    final String getProfileUrl = "$baseurl/user/$userId/profile";
    var resp = await client.get(getProfileUrl);
    if(resp.statusCode == 200){
      var jsonString = resp.body;
      return profileFromJson(jsonString);
    }
    else {
      return null;
    }
  }





}