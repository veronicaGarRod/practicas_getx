import 'package:get/get.dart';

class ContadorReactivoController extends GetxController {
@override
  void onInit() {
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

void increment(){
 counter.value++;

}

void decrement(){
 counter2.value--;

}

  RxInt counter = RxInt(0);
  RxInt counter2 = RxInt(0);
}