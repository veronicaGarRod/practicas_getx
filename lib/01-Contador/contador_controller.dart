import 'package:get/get.dart';

class ContadorController extends GetxController {

int contador=0;
int contador2=0;

 void onInit(){
  super.onInit();
 }
void onReady(){
  super.onReady();
}

void onClose(){
  super.onClose();
}

void incremento(){
contador++;
update(["increment"]);

}

void decremento(){
contador2--;
update(["decrement"]);

}

}