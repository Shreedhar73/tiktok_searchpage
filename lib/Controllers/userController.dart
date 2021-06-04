import 'package:get/state_manager.dart';
import 'package:page_ui/Models/User.dart';
import 'package:page_ui/Services/apiServices.dart';

class UserController extends GetxController{
  //var userList = List<User>().obs;
  List<User> _userList = <User>[].obs;
  List<User> get userList => _userList;



  void searchUser(String searchName) async{
    var users = await ApiServices.searchUser(searchName);
    if(users != null){
      _userList.assignAll(users);

    }
  }
}