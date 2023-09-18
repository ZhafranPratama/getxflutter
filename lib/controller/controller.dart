import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IniController extends GetxController {
  // RxString nama = RxString('');
  final nama = ''.obs;

  TextEditingController textcontroller = TextEditingController();

  void ChangeName(String Newnama) {
    nama.value = Newnama;
    // Get.snackbar('Nama yang diinput', nama.value, snackPosition: SnackPosition.TOP);
  }

  String nama2 = '';

  void ChangeNama2(String Newnama) {
    nama2 = Newnama;
    update();
  }

  RxBool isOpen = RxBool(true);

  void setIsOpen(bool Open) {
    isOpen(Open);
  }

  RxInt x = 0.obs;

  void increaseX(){
    x.value++;
  }

  void decreaseX(){
    x.value--;
  }
}
