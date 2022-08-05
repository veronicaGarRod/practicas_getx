import 'package:get/get.dart';
import 'package:practicas_getx/provider/user_provider.dart';
import '../models/response_user_model.dart';

class UserCrudApiController extends GetxController {
UserProvider _apiuser = UserProvider();
RxList<User> users =RxList([]);
RxInt counter = RxInt(0);
@override
  void onInit() {
    _initialized();
    // TODO: implement onInit
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

  _initialized() async{
    users.value= await _apiuser.getAllUsers();

  }

  onFavorite(int index){
    users[index].isfavorite.value = !users[index].isfavorite.value;
    counter.value = users.where((item) => item.isfavorite== true).length;
  }

onDeleteU(int index){
users.removeAt(index);

}

}