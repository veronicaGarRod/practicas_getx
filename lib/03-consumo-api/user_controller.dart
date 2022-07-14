import 'package:get/get.dart';

import '../models/response_user_model.dart';
import '../provider/user_provider.dart';

class  UserController extends GetxController{
UserProvider _apiuser = UserProvider();
List<User> users =[];
  @override
  void onInit() async {
   users= await _apiuser.getAllUsers();
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}