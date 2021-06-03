import 'package:http/http.dart' as http;
import 'package:page_ui/Models/User.dart';

class ApiServices{
 // List <String> users = [];


  static var client = http.Client();
  final User user;
  ApiServices(this.user);
  static const baseurl = "https://ka-mao.xyz";
  static const searchUserUrl = "$baseurl/user/search";




  static Future <List<User>> searchUser() async{

    var resp = await client.get('$searchUserUrl');
    if ( resp.statusCode == 200){
      var jsonString = resp.body;
      return userFromJson(jsonString);
    }
    else{
      return null;
    }
  }



}