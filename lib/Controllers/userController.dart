// import 'package:get/state_manager.dart';
// import 'package:page_ui/Models/User.dart';
// import 'package:page_ui/Services/apiServices.dart';
//
// class UserController extends GetxController{
//   RxString searchName = " ".obs;
//   //var userList = List<User>().obs;
//   List<User> _userList = <User>[].obs;
//   List<User> get userList => _userList;
//
//
//
//   void searchUser() async{
//     var users = await ApiServices.searchUser(searchName.value);
//     if(users != null){
//       _userList = users;
//     }
//   }
// }