import 'package:get/get.dart';
import 'package:practicas_getx/models/response_user_model.dart';

class UserDetailController extends GetxController {
@override
User users =User(id:2,firstName: '',email:'',lastName: '', avatar: '');


  void onInit() {
    users= Get.arguments as User;
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady
  
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}